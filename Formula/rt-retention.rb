# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RtRetention < Formula
  desc "Artifactory Retention"
  homepage "https://github.com/verifa/rt-retention"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/verifa/rt-retention/releases/download/v0.1.0/rt-retention_0.1.0_darwin_amd64.tar.gz"
      sha256 "6d9719d764f27c33d21d84ecb435aa1b44487ff6192508b11c9edbbd80e72af6"

      def install
        bin.install "rt-retention"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/verifa/rt-retention/releases/download/v0.1.0/rt-retention_0.1.0_darwin_arm64.tar.gz"
      sha256 "198081e9c75e1d556c46d3a5561b984c5251ab76c233165f7eb97623d4ba79fa"

      def install
        bin.install "rt-retention"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/verifa/rt-retention/releases/download/v0.1.0/rt-retention_0.1.0_linux_arm64.tar.gz"
      sha256 "98e356ca5669e3b11b8c8dc820bdcfa826631b64e31acc5b75cb39af9d327d61"

      def install
        bin.install "rt-retention"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/verifa/rt-retention/releases/download/v0.1.0/rt-retention_0.1.0_linux_amd64.tar.gz"
      sha256 "f7fe9a255780a01ff9ebb43595fc795d06ba578bd12fcd8de705a0342df35c89"

      def install
        bin.install "rt-retention"
      end
    end
  end

  test do
    system "#{bin}/rt-retention -v"
  end
end
