# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terraplate < Formula
  desc "Terraplate"
  homepage "https://github.com/verifa/terraplate"
  version "0.0.4-alpha"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/verifa/terraplate/releases/download/0.0.4-alpha/terraplate_0.0.4-alpha_darwin_arm64.tar.gz"
      sha256 "82ef487ef1edd2420b5624ff15907e080e414e951bcdae2d7585937741362c3c"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.0.4-alpha/terraplate_0.0.4-alpha_darwin_amd64.tar.gz"
      sha256 "90c80551c32e81fdfd2fac20e88d27c06a3e3f02b27ba64d500922f23c750886"

      def install
        bin.install "terraplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.0.4-alpha/terraplate_0.0.4-alpha_linux_amd64.tar.gz"
      sha256 "2d377cff7d0cd0e720e113f7c3e041455314cc4197cbff12285f764fff71b1d5"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/terraplate/releases/download/0.0.4-alpha/terraplate_0.0.4-alpha_linux_arm64.tar.gz"
      sha256 "5eebc9486c786a71462bc3a93689a72e79f1109c1ed19e66ef7df09075d86f99"

      def install
        bin.install "terraplate"
      end
    end
  end

  test do
    system "#{bin}/bubbly --version"
  end
end
