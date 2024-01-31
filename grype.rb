# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.74.4"
  license "Apache License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.74.4/grype_0.74.4_darwin_arm64.tar.gz"
      sha256 "0a7e775ac742e234f4317e80a868bd2fd927fa0b66d617c868b5c71b38e9b416"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.74.4/grype_0.74.4_darwin_amd64.tar.gz"
      sha256 "a287961784efa48b07f499d06671b9b41d1fe70c56341e69cdf168f7c8ca3033"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.74.4/grype_0.74.4_linux_arm64.tar.gz"
      sha256 "29faad1775dae7901d5d3cad449f858ca9777c0aff7c39e44c345d0f637ed740"

      def install
        bin.install "grype"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.74.4/grype_0.74.4_linux_amd64.tar.gz"
      sha256 "ec180f410d0edb8837f5735acc0d347122a4b235cf9f7ff692b096fc670fd558"

      def install
        bin.install "grype"
      end
    end
  end
end
