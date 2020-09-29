# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anchore/grype/releases/download/v0.1.0/grype_0.1.0_darwin_amd64.tar.gz"
    sha256 "60add6c5577c939cb412c7767a239339d89b82b21329be245c13c8c40c9a2b6f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.1.0/grype_0.1.0_linux_amd64.tar.gz"
      sha256 "fb83fb144e5d8b9f31fb45146cfe0bd38fb6d44b5c9670fd15d9ab51e14e2419"
    end
  end

  def install
    bin.install "grype"
  end
end
