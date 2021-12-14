# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.27.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.27.2/grype_0.27.2_darwin_amd64.zip"
      sha256 "6dcbee1e359b2e095cfb6eb0a0c248da523e7b19293c3afddbcfaebf0ccc3996"
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.27.2/grype_0.27.2_darwin_arm64.zip"
      sha256 "4e2d0d6b74f49977772ec00067fff2c595fe46e77320278557fcdcd81676d229"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.27.2/grype_0.27.2_linux_amd64.tar.gz"
      sha256 "a0aaae28792a70fd465301cef0f3dc4bd09c2e707208f7a576e4085c8ea861d4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.27.2/grype_0.27.2_linux_arm64.tar.gz"
      sha256 "a4397c93f4ac98bcec68c6062804495b29ab5ba21b22cfb1ebeb0840397649d2"
    end
  end

  def install
    bin.install "grype"

    # Install bash completion
    output = Utils.popen_read("#{bin}/grype completion bash")
    (bash_completion/"grype").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/grype completion zsh")
    (zsh_completion/"_grype").write output
  end
end
