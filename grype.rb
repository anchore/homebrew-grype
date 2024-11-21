# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.85.0"
  license "Apache License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/anchore/grype/releases/download/v0.85.0/grype_0.85.0_darwin_amd64.tar.gz"
      sha256 "c66e5939b1cf11b63855d5d16b291740ae0bf46b3a0f87689d164de652a57d8c"

      def install
        bin.install "grype"
      end
    end
    on_arm do
      url "https://github.com/anchore/grype/releases/download/v0.85.0/grype_0.85.0_darwin_arm64.tar.gz"
      sha256 "88b7270120fb761b56742ee1d946849fd722d790c8dc31b28ce7ad1d71f44d6b"

      def install
        bin.install "grype"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.85.0/grype_0.85.0_linux_amd64.tar.gz"
        sha256 "89f8ccbaa7a47abab90e9e894a925a92ef47a4d2bf0981001e654527378d6ed4"

        def install
          bin.install "grype"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchore/grype/releases/download/v0.85.0/grype_0.85.0_linux_arm64.tar.gz"
        sha256 "aa96abd5bd6912f50ee1763a445a49dc37fafdc2a8354876f7e4802341701f7c"

        def install
          bin.install "grype"
        end
      end
    end
  end
end
