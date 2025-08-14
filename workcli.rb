class Workcli < Formula
  desc "Simple tool that helps automate developer workflows from the command line in Linux and OSX"
  homepage "https://github.com/nycynik/workcli"
  url "https://github.com/nycynik/workcli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b7a952d555b8eb8cb227609fd3a8ab2df15f5177ac49c7abc30df5b0eb0cb091"
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
