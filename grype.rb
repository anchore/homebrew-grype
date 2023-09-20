# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.69.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.69.0/grype_0.69.0_darwin_arm64.tar.gz"
      sha256 "821df306f52fbac1f48060c067cb4f1bdfd6901cdc11a6082972058f7a1e75c1"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.69.0/grype_0.69.0_darwin_amd64.tar.gz"
      sha256 "da7244609b57112ea93123f77c40d27d2421ececdeb0978f78b32c7f8b0f8c69"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.69.0/grype_0.69.0_linux_arm64.tar.gz"
      sha256 "08478ba169941d023223c653b43ac37781639351a3043c7ddaacd827e6efc69a"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.69.0/grype_0.69.0_linux_amd64.tar.gz"
      sha256 "2a602dba318f8509dc993846df720f64c304bed48232ed4d69a2e3eba7c529b1"

      def install
        bin.install "grype"
      end
    end
  end
end
