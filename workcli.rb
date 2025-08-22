class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "890cf5adc19f54d4a9b25f6fa6aaa00dff395df97bce07f81144d21fc3e37862"
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
