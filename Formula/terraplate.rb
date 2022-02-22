# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terraplate < Formula
  desc "Terraplate"
  homepage "https://github.com/verifa/terraplate"
  version "0.1.3-alpha"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.1.3-alpha/terraplate_0.1.3-alpha_darwin_amd64.tar.gz"
      sha256 "2ea6a70c7ff363c153261864d83057ae94b78e931c71c1f72045a7400ae9581f"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/verifa/terraplate/releases/download/0.1.3-alpha/terraplate_0.1.3-alpha_darwin_arm64.tar.gz"
      sha256 "f86297d240427221a6cdec28e015ba84a95c3809c5231654794aac7865ee1b27"

      def install
        bin.install "terraplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.1.3-alpha/terraplate_0.1.3-alpha_linux_amd64.tar.gz"
      sha256 "23682a3a1f23f4d094a968a8bb96c9d1b8347619ac20ec9007ec7b661cc95d7a"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/terraplate/releases/download/0.1.3-alpha/terraplate_0.1.3-alpha_linux_arm64.tar.gz"
      sha256 "e1e4a76aebe36654b551559ff7ca834461309c495623ab92ce06f92d379325c3"

      def install
        bin.install "terraplate"
      end
    end
  end

  test do
    system "#{bin}/terraplate version"
  end
end
