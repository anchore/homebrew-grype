# This file was generated by GoReleaser. DO NOT EDIT.
class Grype < Formula
  desc "A vulnerability scanner for container images and filesystems"
  homepage "https://github.com/anchore/grype"
  version "0.1.0-beta.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anchore/grype/releases/download/v0.1.0-beta.6/grype_0.1.0-beta.6_darwin_amd64.tar.gz"
    sha256 "82ef2c8457e8d806caf275c7bfc9e992f497c1bcb5388b8d8dc1094a98cfc187"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anchore/grype/releases/download/v0.1.0-beta.6/grype_0.1.0-beta.6_linux_amd64.tar.gz"
      sha256 "70d12962c5c7b8fd992ce31878eaa0a71a9b0bf18fd1235f9fbabe8b23a2e5b7"
    end
  end

  def install
    bin.install "grype"
  end
end
