# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.42.0"
  license "MIT"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.42.0/c8y_2.42.0_macOS_amd64.tar.gz"
      sha256 "9a4b08a722a75ac0943e06c30e98c3624663091bd1dccb47961ba77c6b88cbe9"

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
    on_arm do
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.42.0/c8y_2.42.0_macOS_arm64.tar.gz"
      sha256 "fa76bbd8af87f5bc6b0d73cc514bbfeac2cdff8eb0d956b68e55068c1cf2ebc8"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.42.0/c8y_2.42.0_linux_amd64.tar.gz"
        sha256 "5af47aea64ba558ce8f760d8d22365adac1727c5350c6d21c4124c5b9dc76c57"

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
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.42.0/c8y_2.42.0_linux_armv6.tar.gz"
        sha256 "4e1ab069f1163e5f3a46035ef396dba1f0118cbf89593bf419904dd3aba824ce"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.42.0/c8y_2.42.0_linux_arm64.tar.gz"
        sha256 "1c1ec6c600468bb389523681d2baf643f2bc9e393f152701a734499a0613f164"

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
