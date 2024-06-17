class Usearch12 < Formula
  desc "Search & clustering algorithms often orders of magnitude faster than BLAST"
  homepage "https://drive5.com/usearch"
  url "https://github.com/rcedgar/usearch12/archive/refs/tags/v12.0-beta1.tar.gz"
  sha256 "dbb06e4733801dab1c405616880261bd885ab171dfdb1d44e8ede48d739cdc43"
  license "GPL-3.0"

  depends_on "ccache" => :build
  depends_on "cmake" => :build

  def install
    cd "src" do
      system "make"
    end

    bin.install "bin/usearch12"
  end

  test do
    system "#{bin}/usearch12"
  end
end
