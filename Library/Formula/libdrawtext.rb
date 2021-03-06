require 'formula'

class Libdrawtext < Formula
  homepage 'http://nuclear.mutantstargoat.com/sw/libdrawtext/'
  url 'http://nuclear.mutantstargoat.com/sw/libdrawtext/libdrawtext-0.2.1.tar.gz'
  sha1 'dd12c67e7c7898a5941a92d616e9dbbbab4b9a38'
  head 'https://github.com/jtsiomb/libdrawtext.git'
  revision 1

  bottle do
    cellar :any
    sha256 "11ba1625c6232d76e97771f49923bd6a02c5558ac4887e9a902ff27ef09af16b" => :yosemite
    sha256 "b157471cda3a580f58f0286afc1feded4fb0265dcaaa46f794f9e0d5bb272b7f" => :mavericks
    sha256 "b2ce6cfecd9efc0fcf38b098de0080e3b42ef7f63889f89f69cc8dc221e06688" => :mountain_lion
  end

  depends_on 'pkg-config' => :build
  depends_on 'freetype'
  depends_on 'glew'

  def install
    system "./configure", "--disable-dbg", "--enable-opt", "--prefix=#{prefix}"
    system "make", "install"
  end
end
