# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.27.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.27.3/grype_0.27.3_darwin_amd64.zip"
      sha256 "a3c2eb453803db126152930ee9e22e28a67a2e6d67d1b8e84cb9c10f27057540"
    end
    if Hardware::CPU.arm?
      url "https://github.com/anchore/grype/releases/download/v0.27.3/grype_0.27.3_darwin_arm64.zip"
      sha256 "9d381fcaeac77c3b8d8c55f2bc37f4ab2f07c5f0e321b75acbf4d13211b7384c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.27.3/grype_0.27.3_linux_amd64.tar.gz"
      sha256 "0030b33251511ceb4f6bd75c67784877d996e0541a528214566d8482a938ad99"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchore/grype/releases/download/v0.27.3/grype_0.27.3_linux_arm64.tar.gz"
      sha256 "92cfcd625c6ae029c65ee4a9abe19474297207356507b9b2986561fac05dea8a"
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
