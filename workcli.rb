class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "b23b6f651a270ff207712fbfdd23fd1d27f34a0b80d3f8ab95ef218d4c24b402"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]
    libexec.install "bin/workcli"
    (bin/"workcli").write_env_script libexec/"workcli", WORKCLI_LIBEXEC: libexec
  end

  test do
    system "#{bin}/workcli", "--version"
  end
end
