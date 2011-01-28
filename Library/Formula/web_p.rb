require 'formula'

class WebP <Formula
  url 'http://webp.googlecode.com/files/webp-leptonica-0.0.5.tar.gz'
  homepage 'http://code.google.com/p/webp/'
  md5 'da695d17be466156825b6ee799136042'

  depends_on 'jpeg'

  def install
    %/leptonlib-1.066 libwebp/.each do |dir|
      Dir.chdir(dir) do
        system "./configure", "--disable-debug", "--disable-dependency-tracking",
                              "--prefix=#{prefix}"
        system "make install"
      end
    end
  end
end
