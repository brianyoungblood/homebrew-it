class Gam < Formula
  desc "Command-line management for Google G Suite"
  homepage "https://github.com/jay0lee/GAM/wiki"
  url "https://github.com/jay0lee/GAM/archive/gam-5.10-macos-x86_64-MacOS10.15.4.tar.xz"
  sha256 "4fe358d202ea98a326e796fc0c055602fd2c92319aff0b4417da1f802e99c685"
  head "https://github.com/jay0lee/GAM.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"src/gam.py" => "gam"
  end

  test do
    system bin/"gam", "version"
  end
end
