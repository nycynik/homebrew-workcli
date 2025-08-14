class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "90b1e9f049f6480f2c6ce6a6dd39573f6e6151168eb01a53118bf8af1fad6781"
  license "MIT"

  def install
    libexec.install Dir["lib/*"]
    bin.install "bin/workcli"
    (bin/"workcli").write_env_script libexec/"../bin/workcli", WORKCLI_LIBEXEC: libexec
  end

  test do
    system "#{bin}/workcli", "--version"
  end
end
