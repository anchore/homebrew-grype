# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.73.2"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.73.2/grype_0.73.2_darwin_arm64.tar.gz"
      sha256 "edaff4e5902106c17f5c9db9fdeae1a997f971ec276471763195a7b42143c9a0"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.73.2/grype_0.73.2_darwin_amd64.tar.gz"
      sha256 "017bd982493c7895ad09f99173d5eccc5783007249304600d0c2363c0625f604"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.73.2/grype_0.73.2_linux_arm64.tar.gz"
      sha256 "ca2c237e92c76e3cd694803c6561382fbd4fa8311ecdd9402b20d0d471a54abb"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.73.2/grype_0.73.2_linux_amd64.tar.gz"
      sha256 "76276a99a5faaad5dc69427dabbd7badb8f08b7532f309118cbdd22c3d0a71bc"

      def install
        bin.install "grype"
      end
    end
  end
end
