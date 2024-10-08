# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity IoT command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.43.3"
  license "MIT"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.43.3/c8y_2.43.3_macOS_amd64.tar.gz"
      sha256 "f83921f2664e4ecf23d62e88009247acecc2faa5611fc86e616048f894232b19"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.43.3/c8y_2.43.3_macOS_arm64.tar.gz"
      sha256 "351a7fdd4ca98860216cbd9d92acc21d7685b1f91d26e0fbbb9565d15dbf07ed"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.43.3/c8y_2.43.3_linux_amd64.tar.gz"
        sha256 "6006a24c67ff6eec15c402bcafd85f5d0822d5b0a6c349311d234ffbcbd8348f"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.43.3/c8y_2.43.3_linux_armv6.tar.gz"
        sha256 "8c56dba923dfb59480f459aa308d548c9661649eaf3416be1bb1e4c7d1a043c0"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.43.3/c8y_2.43.3_linux_arm64.tar.gz"
        sha256 "9eeaf16f29f60805d82f33a7e89acd48ca97fb2037f0aff116f2205dc72bfeea"

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
