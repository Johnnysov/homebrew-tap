class Termchat < Formula
  desc "Simple TCP terminal chat server and client"
  homepage "https://github.com/Johnnysov/termchat"
  url "https://github.com/Johnnysov/termchat/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "186e81e036f69f34ebb70776e5c4292419d694256d30f4d27ce75edcbd112d7b"
  license "MIT"

  depends_on "node"

  def install
    bin.install "termchat.js" => "termchat"
  end

  test do
    system "#{bin}/termchat", "-h"
  end
end
