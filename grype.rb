# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.94.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.94.0/grype_0.94.0_darwin_amd64.tar.gz"
      sha256 "cc106793838e27fd915c4721c93aaea06fed58ab00f95bb4b11cfcfd2dd1829f"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.94.0/grype_0.94.0_darwin_arm64.tar.gz"
      sha256 "83dc49409325c60c08b8f0ad5f7f0a30f6fa5b5d8b86d78162631885e9a13ed6"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.94.0/grype_0.94.0_linux_amd64.tar.gz"
      sha256 "46bad313a4083474a776f6a2787b0caee842c52028cd9b1bffc9d74ba11d565a"
      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.94.0/grype_0.94.0_linux_arm64.tar.gz"
      sha256 "fb8bdad697ea51069832f30d0ba237eb0d04661de6dc6bb4b173623bea68b93a"
      def install
        bin.install "grype"
      end
    end
  end
end
