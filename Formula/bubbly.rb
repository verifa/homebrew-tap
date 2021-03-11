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
    sha256 "7d15c84cace42ab3dda25862f2d6ebb614415797109addb4d79ca1d4d3cd9d14"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_amd64.tar.gz"
    sha256 "27ab4b9f24f6594e1c87de07ed4713a5f44dfe4d344bc09b0325f5b24db0bca0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_arm64.tar.gz"
    sha256 "5e16a26f57d4d23062ffcfa3ddda25111a3b5d272771ce88e5a14880b4519237"
  end

  depends_on "go"

  def install
    bin.install "bubbly"
  end

  test do
    system "#{bin}/bubbly --version"
  end
end
