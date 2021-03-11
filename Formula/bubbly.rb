# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bubbly < Formula
  desc "Bubbly CLI"
  homepage "https://bubbly.dev/"
  version "0.0.1-alpha.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_darwin_amd64.tar.gz"
    sha256 "5688eb3647cc68e17e9878a78f36d391083bffa27ef1abc89d8f5c4288731703"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_amd64.tar.gz"
    sha256 "8ebc5321b3edfae55d51b81c21246c21e7c822b51255e4e3f568cf5c5a5277ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_arm64.tar.gz"
    sha256 "6046d60adf9539738971b11570b7642a2d0fb2e9c0f2e944711470fc85b0e240"
  end

  depends_on "go"

  def install
    bin.install "bubbly"
  end

  test do
    system "#{bin}/bubbly --version"
  end
end
