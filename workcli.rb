class workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/you/mytool/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<sha256>"
  license "MIT"

  def install
    bin.install "bin/workcli"
    libexec.install Dir["lib/*"]
  end

  test do
    system "#{bin}/workcli", "--version"
  end
end
