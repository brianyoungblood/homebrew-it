
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v3.61.tar.gz"
  version "3.61"
  sha256 "acd73486047bcd8d26bf164363d9d9d6e48acf99632e7ca658ebbe6c554e844b9"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 3.61'"
  end
end
