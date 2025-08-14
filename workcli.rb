class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "d1eb8e122da5cd87a49f06d1b2878a8fc855ee06af98c35fe745eb733f6e624d"
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
