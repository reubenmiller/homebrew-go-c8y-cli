# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.7.0/c8y_2.7.0_macOS_arm64.tar.gz"
      sha256 "ddcb0653e1759d04cf68ec43658d34f2b5b6eeae91d19a3c88656969fb0141f1"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.7.0/c8y_2.7.0_macOS_amd64.tar.gz"
      sha256 "40cd0b03db02c07f55f1709a564bfe3c7947e90955bd3e3817d8994ed1d3cddd"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.7.0/c8y_2.7.0_linux_armv6.tar.gz"
      sha256 "609ddfec196d952c7927cd742ba9a9558d30fa24ca2a2c08f972a447db219954"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.7.0/c8y_2.7.0_linux_amd64.tar.gz"
      sha256 "9ebcaddc60b819750584ba72c70dcd90b03512473b397ffd7f5b39a9ec5e2f3a"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.7.0/c8y_2.7.0_linux_arm64.tar.gz"
      sha256 "5c3b0f65a2e79655d02deca87d5f439bdb31b2fc55f837b16f987ddb50721ed8"

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
