# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.83.0"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/anchore/grype/releases/download/v0.83.0/grype_0.83.0_darwin_amd64.tar.gz"
      sha256 "fc46f9ee5e76262f990834f120af63ab4952180a0d416228ad4fdf38bf02e1a3"

      def install
        bin.install "grype"
      end
    end
    on_arm do
      url "https://github.com/anchore/grype/releases/download/v0.83.0/grype_0.83.0_darwin_arm64.tar.gz"
      sha256 "c9b2130a8312341476f4c624f95c58b5edf0a51b1d16263a96d6c985d74ba893"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.83.0/grype_0.83.0_linux_amd64.tar.gz"
        sha256 "d7e333b549a9f989948c4efe65ca9101fcd9cdd7ca39af78b7445abd7bfe4f26"

        def install
          bin.install "grype"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.83.0/grype_0.83.0_linux_arm64.tar.gz"
        sha256 "80f13f7da2fe6afa684a236611eb9a49af0c05bdc532f41a39907766c841aad8"

        def install
          bin.install "grype"
        end
      end
    end
  end
end
