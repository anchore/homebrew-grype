# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.87.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.87.0/grype_0.87.0_darwin_amd64.tar.gz"
      sha256 "2378ccb8f5cfe2f940e57b5b8978e61c61b20139d6179f73409649a0cf449dcd"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.87.0/grype_0.87.0_darwin_arm64.tar.gz"
      sha256 "0731f6f325becf952560c14b6d5ac29ff1c551efe67e07099ad75b11ccabd527"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.87.0/grype_0.87.0_linux_amd64.tar.gz"
        sha256 "be710d15f5477e5c77ce03d14e480263415d7ab135e04b8483663f688823087d"

        def install
          bin.install "grype"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.87.0/grype_0.87.0_linux_arm64.tar.gz"
        sha256 "3c64dc19d0dab8a1ab30860c9f5167383088d009528054b3854c56aac3574948"

        def install
          bin.install "grype"
        end
      end
    end
  end
end
