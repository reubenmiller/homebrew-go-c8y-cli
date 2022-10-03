# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.16.0"
  license "MIT"

  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional
  depends_on "bash" => :optional
  depends_on "fish" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.16.0/c8y_2.16.0_macOS_arm64.tar.gz"
      sha256 "34389bd7d94e35d965e1fd8a2b5dc5c067f0822ab36f88f7495e4401efd6b6e7"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.16.0/c8y_2.16.0_macOS_amd64.tar.gz"
      sha256 "0277a5d551f07bb88c053f74176e2d811fecc9a78b445dc570250851404bcc72"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.16.0/c8y_2.16.0_linux_armv6.tar.gz"
      sha256 "e00bfe12f3f1dfcfbd4c4c8f9ec2bba153ce4b6962464872909ddf2e80c34b03"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.16.0/c8y_2.16.0_linux_arm64.tar.gz"
      sha256 "8fb6db3e8b10a431f9641ff9d883284fb59f2ec28f177ba2d38961cc3852f4cd"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.16.0/c8y_2.16.0_linux_amd64.tar.gz"
      sha256 "3673862f2ab5e7136115c6374224b9c5b1c838fae42c91bc8c64abf00b05e89f"

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

  def caveats
    <<~EOS
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
