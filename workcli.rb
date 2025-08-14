class workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/you/mytool/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7fc9c67c51a07396f37ac063fe177f5640fa000aad85f1e08888e9d294808cb2"
  license "MIT"

  def install
    bin.install "bin/workcli"
    libexec.install Dir["lib/*"]
  end

  test do
    system "#{bin}/workcli", "--version"
  end
end
