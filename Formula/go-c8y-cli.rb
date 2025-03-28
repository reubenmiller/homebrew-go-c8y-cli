# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.49.2"
  license "MIT"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.49.2/c8y_2.49.2_macOS_amd64.tar.gz"
      sha256 "583683ad22e232a8dcec39c8825ed8ff3a7de1af010e6211d4ef1ff2a6da695c"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.49.2/c8y_2.49.2_macOS_arm64.tar.gz"
      sha256 "9293cb8d10bdd02aac8d235ed91373c8c523eff63c75a74031a5cc5ea3d14f1d"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.49.2/c8y_2.49.2_linux_amd64.tar.gz"
        sha256 "f8ff34fbbcca06a226185bf43dd174adffd0a092a4193dbe732a4cae1385926c"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.49.2/c8y_2.49.2_linux_armv6.tar.gz"
        sha256 "7866229cb2ab5df99d01b847683d54eb0df2257cd06009736730ebfdd257668d"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.49.2/c8y_2.49.2_linux_arm64.tar.gz"
        sha256 "51ea9f92446a3d15b4ef6810dacc0364590555376037f8de9b8c63fcebb1e3e5"

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
