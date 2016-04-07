
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v3.65.tar.gz"
  version "3.65"
  sha256 "02ee1a5f5fcff5cd65a73786221a3a35fab38c12675060f8d0a0331216ca141c"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 3.65'"
  end
end
