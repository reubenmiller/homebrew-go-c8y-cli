# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.5.1"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.5.1/c8y_2.5.1_macOS_amd64.tar.gz"
      sha256 "cf310de0278c1b39873a487aed240fc9e84e32b800f6627e4b95bd2fe689c8df"

      def install
        bin.install "bin/c8y"
        man1.install Dir["share/man/man1/*"]

        config_dir = etc/"go-c8y-cli"

        if config_dir.exist?
          # FileUtils.rm_r etc/"go-c8y-cli"
          system "git", "-C", config_dir, "pull", "--ff-only"
        else
          system "git", "clone", "--depth", "1", "https://github.com/reubenmiller/go-c8y-cli-addons.git", config_dir
        end

        # Add completions
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/c8y", "completion", "bash")
        (bash_completion/"c8y").write output
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/c8y", "completion", "zsh")
        (zsh_completion/"_c8y").write output
        output = Utils.safe_popen_read({ "SHELL" => "fish" }, "#{bin}/c8y", "completion", "fish")
        (fish_completion/"c8y.fish").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.5.1/c8y_2.5.1_macOS_arm64.tar.gz"
      sha256 "e8636ceff95e0e56cdbecca04ceb9b612ae7b54655e605ee6bcec82137dedae5"

      def install
        bin.install "bin/c8y"
        man1.install Dir["share/man/man1/*"]

        config_dir = etc/"go-c8y-cli"

        if config_dir.exist?
          # FileUtils.rm_r etc/"go-c8y-cli"
          system "git", "-C", config_dir, "pull", "--ff-only"
        else
          system "git", "clone", "--depth", "1", "https://github.com/reubenmiller/go-c8y-cli-addons.git", config_dir
        end

        # Add completions
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/c8y", "completion", "bash")
        (bash_completion/"c8y").write output
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/c8y", "completion", "zsh")
        (zsh_completion/"_c8y").write output
        output = Utils.safe_popen_read({ "SHELL" => "fish" }, "#{bin}/c8y", "completion", "fish")
        (fish_completion/"c8y.fish").write output
      end
    end
  end

  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional
  depends_on "bash" => :optional
  depends_on "fish" => :optional

  def caveats; <<~EOS
    Please add the following to your shell profile to enable usage of "set-session" and other helpful c8y utility functions

    bash: ~/.bashrc

      source "#{etc}/go-c8y-cli/shell/c8y.plugin.sh"

    zsh: ~/.zshrc

      source "#{etc}/go-c8y-cli/shell/c8y.plugin.zsh"

    fish: ~/.config/fish/config.fish

      source "#{etc}/go-c8y-cli/shell/c8y.plugin.fish"

    powershell: ~/.config/powershell/Microsoft.PowerShell_profile.ps1
      . "#{etc}/go-c8y-cli/shell/c8y.plugin.ps1"

    You will also need to force reload of your profile:

      source <profile>
  EOS
  end

  test do
    system "#{bin}/c8y version --select version"
  end
end
