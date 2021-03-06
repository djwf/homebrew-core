class Icon < Formula
  desc "General-purpose programming language"
  homepage "http://www.cs.arizona.edu/icon/"
  url "https://www.cs.arizona.edu/icon/ftp/packages/unix/icon-v951src.tgz"
  sha256 "062a680862b1c10c21789c0c7c7687c970a720186918d5ed1f7aad9fdc6fa9b9"
  version "9.5.1"

  bottle do
    cellar :any_skip_relocation
    sha256 "5218afb915b7892d4c242c659218735293136c3b100f54aa7199bcc716915939" => :el_capitan
    sha256 "44450b176b56db833a91ca6ae681e3876b2864a094b254340bcb5cd136957f17" => :yosemite
    sha256 "ca5ba233b4713e54680525ffd3ee7554988aa48f6a959f78b53c24e58d8c1c59" => :mavericks
  end

  def install
    ENV.deparallelize
    system "make", "Configure", "name=posix"
    system "make"
    bin.install "bin/icon", "bin/icont", "bin/iconx"
    doc.install Dir["doc/*"]
    man1.install Dir["man/man1/*.1"]
  end
end
