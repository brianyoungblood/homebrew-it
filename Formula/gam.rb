
class Gam < Formula
  homepage "https://github.com/jay0lee/GAM"
  url "https://github.com/jay0lee/GAM/archive/v4.30.tar.gz"
  version "4.30"
  sha256 "846b2902fe36019a9f4ebd4a911e780e103fb2d210971b8a4e407ddb6d8db4f6"
  head "https://github.com/jay0lee/GAM.git"

  def install
    prefix.install Dir["*"]
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/client_secrets.json" => "client_secrets.json"
    prefix.install_symlink "/Users/#{ENV["USER"]}/Dropbox/GAM/oauth2service.json" => "oauth2service.json"
    bin.install_symlink prefix/"gam.py" => "gam"
  end

  test do
    system "#{bin}/gam | grep 'GAM 4.30'"
  end
end
