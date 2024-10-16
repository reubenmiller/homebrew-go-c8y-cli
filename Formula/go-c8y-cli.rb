# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoC8yCli < Formula
  desc "Cumulocity IoT command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.44.0"
  license "MIT"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.44.0/c8y_2.44.0_macOS_amd64.tar.gz"
      sha256 "af528cedec0bff7a99107141263b34b06548c62be3c2958f690f6b033436ca39"

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
      url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.44.0/c8y_2.44.0_macOS_arm64.tar.gz"
      sha256 "273ac4eef1ec6846626283fff899b1e59ad2bebdcdceede726346784f0680639"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.44.0/c8y_2.44.0_linux_amd64.tar.gz"
        sha256 "3dea802103ec42ef7b9cb6aaf5484be079094fb94e51b7a23b55db5bd38f74a2"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.44.0/c8y_2.44.0_linux_armv6.tar.gz"
        sha256 "8f4f3e5540cea60e6b6d86b5fbe21e7884ea9ab76918cbc6b6b8966dd3944df5"

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
        url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.44.0/c8y_2.44.0_linux_arm64.tar.gz"
        sha256 "448698c8e9a9efc36517e8bc2151855e77576844590f2248dac78aede4cd962c"

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
