# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class C8y < Formula
  desc "Cumulocity's unofficial command line tool."
  homepage "https://goc8ycli.netlify.app/"
  version "2.0.0-beta45"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/reubenmiller/homebrew-go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_macOS_amd64.tar.gz"
    sha256 "eaf77313ad695dc52edf67d347ea70d1e504e7cdbc2ce95e104bd717841125c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/reubenmiller/homebrew-go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_macOS_arm64.tar.gz"
    sha256 "e6be1afef9af078caaedffe715c3fe74f2e65fe93b69a1141b0d3582f3ba146c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/reubenmiller/homebrew-go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_amd64.tar.gz"
    sha256 "4624bc7382f8950f22b92108c89dceadbe8688e270a1d4bd4eef9a441da14335"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/reubenmiller/homebrew-go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_armv6.tar.gz"
    sha256 "54a0a507f8cd0b92e375c0b22847f0f3f3f71bb763f18d13e22922f2bb357fe8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/reubenmiller/homebrew-go-c8y-cli/releases/download/v2.0.0-beta45/c8y_2.0.0-beta45_linux_arm64.tar.gz"
    sha256 "6e2716ac9547592df9ae842ea2a0669dcdef9540623086b0a11cdca593ca6fdf"
  end

  def install
    bin.install "c8y"
  end
end
