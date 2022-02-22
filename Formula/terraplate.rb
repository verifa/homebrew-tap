# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terraplate < Formula
  desc "Terraplate"
  homepage "https://github.com/verifa/terraplate"
  version "0.1.4-alpha"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/verifa/terraplate/releases/download/0.1.4-alpha/terraplate_0.1.4-alpha_darwin_arm64.tar.gz"
      sha256 "dd3ae74c67fed1306f925502fc32cc0b6339e60c7cba2005c9af8a924ede1a5a"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.1.4-alpha/terraplate_0.1.4-alpha_darwin_amd64.tar.gz"
      sha256 "fe7ff2a284b3d691ea63196670e3b3ca8d46b05d0f6efdf47dc2e4ddb783086f"

      def install
        bin.install "terraplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/terraplate/releases/download/0.1.4-alpha/terraplate_0.1.4-alpha_linux_arm64.tar.gz"
      sha256 "9b479f1c1a7e6500ea645f6a6e1f5dec8df79caf88d57981a0a57b467121b0aa"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.1.4-alpha/terraplate_0.1.4-alpha_linux_amd64.tar.gz"
      sha256 "f61d0968e230912d0870dd422e512791c83b1cd02793e452500869b451a1e245"

      def install
        bin.install "terraplate"
      end
    end
  end

  test do
    system "#{bin}/terraplate version"
  end
end
