# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Terraplate < Formula
  desc "Terraplate"
  homepage "https://github.com/verifa/terraplate"
  version "0.2.6-alpha"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.2.6-alpha/terraplate_0.2.6-alpha_darwin_amd64.tar.gz"
      sha256 "6d19f22c54747b5e53dd4069afa6c6dece17d2dc1e7f8e89906225ccb3454e3d"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/verifa/terraplate/releases/download/0.2.6-alpha/terraplate_0.2.6-alpha_darwin_arm64.tar.gz"
      sha256 "847d296ae85c34445ab6e75062e6f6c154b94a729e5d1df259d3fd42d8197c70"

      def install
        bin.install "terraplate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/terraplate/releases/download/0.2.6-alpha/terraplate_0.2.6-alpha_linux_amd64.tar.gz"
      sha256 "1a52cdbe6955f8d28e6892af51fdb9787d025d49cd8a2a5577ca9457ee687f82"

      def install
        bin.install "terraplate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/terraplate/releases/download/0.2.6-alpha/terraplate_0.2.6-alpha_linux_arm64.tar.gz"
      sha256 "4e8ae72a7e50e591eef3bad8da15a6675e52d920893c1e8eaa4aca9f67ba8025"

      def install
        bin.install "terraplate"
      end
    end
  end

  test do
    system "#{bin}/terraplate version"
  end
end
