# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terraplate < Formula
  desc "Terraplate"
  homepage "https://github.com/verifa/terraplate"
  version "0.3.0-alpha"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.3.0-alpha/terraplate_0.3.0-alpha_darwin_amd64.tar.gz"
      sha256 "ae994b873afd856c65ddb6c67d66764f6fc26964ee617efcefe6bbdbbffe763b"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/verifa/terraplate/releases/download/0.3.0-alpha/terraplate_0.3.0-alpha_darwin_arm64.tar.gz"
      sha256 "174b76cc13eeb07e58f617da05b4ac4299ede5a07be1f8ab3b60e6cdaa324999"

      def install
        bin.install "terraplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.3.0-alpha/terraplate_0.3.0-alpha_linux_amd64.tar.gz"
      sha256 "442d58b51cd21d064111bd512b6221e6888613342ada1b3886ab1438755bc218"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/terraplate/releases/download/0.3.0-alpha/terraplate_0.3.0-alpha_linux_arm64.tar.gz"
      sha256 "2d7eeb1bf490cc52ebce267f67d5a144bb0c440b6c6e7584872aab37073c9286"

      def install
        bin.install "terraplate"
      end
    end
  end

  test do
    system "#{bin}/terraplate version"
  end
end
