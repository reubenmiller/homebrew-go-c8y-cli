# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class C8y < Formula
  desc "Cumulocity's unofficial command line tool"
  homepage "https://goc8ycli.netlify.app/"
  version "2.0.0-beta45"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_macOS_amd64.tar.gz"
    sha256 "2cb08acbe5623137034639f8807eb68c13c60aa0d70e5916a4020f48047a4ada"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_macOS_arm64.tar.gz"
    sha256 "dfbbfad1475e53451e3a532815dc0860fa8f17bdb827da9310543b89e67ea4bb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_amd64.tar.gz"
    sha256 "1e8e7a4f476821828fdc10da95d2a75d7c7fb36a9e2982c4ac767900e7e55ff7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_armv6.tar.gz"
    sha256 "9206f1dbe93b456c4ffe80f01fba7134515231a3157c294f121bffe6828e953a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/reubenmiller/go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_arm64.tar.gz"
    sha256 "de7b493f555439ba0e5342a9f3e2592e335a44cfe4ee9cd9825532eb27c78301"
  end

  depends_on "git" => :optional
  depends_on "jq" => :optional
  depends_on "zsh" => :optional
  depends_on "bash" => :optional
  depends_on "fish" => :optional

  def install
    bin.install "bin/c8y"
    man1.install Dir["share/man/man1/*"]

    config_dir = etc/"go-c8y-cli"

    if config_dir.exist?
      # FileUtils.rm_r etc/"go-c8y-cli"
      system "git", "-C", config_dir, "pull", "--ff-only"
    else
      system "git", "clone", "--depth", "1", "https://github.com/reubenmiller/.go-c8y-cli.git", config_dir
    end

    # Add completions
    output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/c8y", "completion", "bash")
    (bash_completion/"c8y").write output
    output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/c8y", "completion", "zsh")
    (zsh_completion/"_c8y").write output
    output = Utils.safe_popen_read({ "SHELL" => "fish" }, "#{bin}/c8y", "completion", "fish")
    (fish_completion/"c8y.fish").write output
  end

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
