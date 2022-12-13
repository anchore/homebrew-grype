# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.54.0"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.54.0/grype_0.54.0_darwin_amd64.tar.gz"
      sha256 "fc2a365a32bc25c250049cbe3dfeb6175319fd4396e959cacbc2c3dbd3373110"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.54.0/grype_0.54.0_darwin_arm64.tar.gz"
      sha256 "99b83f64420605788e207e97fca17e70f602863571b6d2af2d30bca612c7319f"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.54.0/grype_0.54.0_linux_amd64.tar.gz"
      sha256 "a966be9a38bfbf49568befab13becf15d37a18626deae53a05bce32faeb6f644"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.54.0/grype_0.54.0_linux_arm64.tar.gz"
      sha256 "0993e0da43bf153aaec6251c7ea777ae1f8dc325be2fdcce68ff1e4f718f0e14"

      def install
        bin.install "grype"
      end
    end
  end
end
