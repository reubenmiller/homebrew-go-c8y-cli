# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.10.3/c8y_2.10.3_macOS_arm64.tar.gz"
      sha256 "61d13b7a3b83eaccaac1dc67e51575ed954b17c6e793caadb9c9b36ab2c465e5"

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
    if Hardware::CPU.intel?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.10.3/c8y_2.10.3_macOS_amd64.tar.gz"
      sha256 "d9e11755100ece4749d1d2ac4853aaac3c44bfc698424ffa8c72957c4895c3e9"

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

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.10.3/c8y_2.10.3_linux_armv6.tar.gz"
      sha256 "e812d4f0da8080b46078ddc1b28098fb63cbc143fded3c136d286536e9e57e03"

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
    if Hardware::CPU.intel?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.10.3/c8y_2.10.3_linux_amd64.tar.gz"
      sha256 "ba6d8fad33c47b54d5754a7c98e70a696375286cbe037f1b9f23f4817cdb1dcf"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.10.3/c8y_2.10.3_linux_arm64.tar.gz"
      sha256 "ffd9c53321ca2ce6bd8a33917edd0c4313d545998837893044b99e63e9b90870"

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
