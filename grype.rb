# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anchore/grype/releases/download/v0.3.0/grype_0.3.0_darwin_amd64.tar.gz"
    sha256 "db8b36dd93c668022eb729d6fb37c9f972a5c9c0e9d3fd5394a18d6c04c83d04"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.3.0/grype_0.3.0_linux_amd64.tar.gz"
      sha256 "dcb09632869404af328b8b54fa5eacacecd9ffae778f40d037d200c6142d3c70"
    end
  end

  def install
    bin.install "grype"
    bin.install "grype"
  end
end
