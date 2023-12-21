# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.73.5"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.73.5/grype_0.73.5_darwin_amd64.tar.gz"
      sha256 "e7f41c71f87293e3b7320fcd1fdbeeda9006e88a0978ae3dfa3c508847934d97"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.73.5/grype_0.73.5_darwin_arm64.tar.gz"
      sha256 "3ac1c9cccfd3e4d7ea61d6b6ebdcd24c94663d8593130a0671948464a2038feb"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.73.5/grype_0.73.5_linux_arm64.tar.gz"
      sha256 "1a4aa56c5bb085e2221d452d6fdf79b1e0c98fe89210c48c093fdd214892e0bd"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.73.5/grype_0.73.5_linux_amd64.tar.gz"
      sha256 "5ccaf321f049c65befa1a7156e0c08a31a05b2d8c469776a8d8c780fa6f9c792"

      def install
        bin.install "grype"
      end
    end
  end
end
