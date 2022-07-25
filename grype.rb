# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.44.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.44.0/grype_0.44.0_darwin_amd64.tar.gz"
      sha256 "7c3999004cba85438b6aea2883532f67b771364132cefb10f9c2113256096875"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.44.0/grype_0.44.0_darwin_arm64.tar.gz"
      sha256 "e1844e98fb06fe6c8a09ab5b8a05bb3ee1b80b70f0ad2fd56f9dfa396caf51ef"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.44.0/grype_0.44.0_linux_amd64.tar.gz"
      sha256 "9e75213c201e6e623380461c5472e40e67c3f2055f2578ac871708f15dc38788"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.44.0/grype_0.44.0_linux_arm64.tar.gz"
      sha256 "0c6cc433696dd35c9e4d9e0aa2892d48e50bf29b500e434913b7520e56e6f949"

      def install
        bin.install "grype"
      end
    end
  end
end
