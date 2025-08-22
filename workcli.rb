class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "7a5144374b025efb6d4418e7fbb133c37d4d432587ac7af93c42973ca3729f2c"
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
