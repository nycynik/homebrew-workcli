class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "00acd467d410f2e6401a5de48c21acb2402764d85dde42ef375d6e606ef4497e"
  license "MIT"

  def install
    bin.install "bin/workcli"
    libexec.install Dir["lib/*"]
  end

  test do
    system "#{bin}/workcli", "--version"
  end
end
