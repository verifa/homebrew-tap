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
    sha256 "686e360698e43fd8f6d32f40d41e1e5c4b037dbbe8950362b002575d0f566945"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_darwin_arm64.tar.gz"
    sha256 "b1358a1f387b8b6f19822ebfc92dd0e33017081be3960c9eb3fc0785568898de"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_amd64.tar.gz"
    sha256 "d8610bf8d66fcaa07b092a465b74c12ccafeddd0ff0975158967ca01a1e514a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/verifa/bubbly/releases/download/v0.0.1-alpha.2/bubbly_0.0.1-alpha.2_linux_arm64.tar.gz"
    sha256 "00d5774943e10271f97cb94d9e36b051141d9097822d62a7fc7e495023885550"
  end

  depends_on "go"

  def install
    bin.install "bubbly"
  end

  test do
    system "#{bin}/bubbly --version"
  end
end
