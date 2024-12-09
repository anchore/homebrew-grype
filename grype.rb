# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.86.0"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/anchore/grype/releases/download/v0.86.0/grype_0.86.0_darwin_amd64.tar.gz"
      sha256 "98fe3b1635781ded68d2190bb37961dc913e9d99d8416e5bdbc3cfb2bd7cf938"

      def install
        bin.install "grype"
      end
    end
    on_arm do
      url "https://github.com/anchore/grype/releases/download/v0.86.0/grype_0.86.0_darwin_arm64.tar.gz"
      sha256 "5c6e8b75fea4c68f98d27933bbc6f373939211e2d9613bdd839c74ef98c07ca4"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.86.0/grype_0.86.0_linux_amd64.tar.gz"
        sha256 "d92380dbfd2984713a3c6a0c6ec7fbe66f6dffb46c7eac4bbed329a2290ed48d"

        def install
          bin.install "grype"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.86.0/grype_0.86.0_linux_arm64.tar.gz"
        sha256 "fcc3ea557014c1a18ca56d2b38830604f43d662814d87e6c2eeed5604c79492a"

        def install
          bin.install "grype"
        end
      end
    end
  end
end
