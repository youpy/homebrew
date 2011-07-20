require 'formula'

class Rubberband < Formula
  url 'http://code.breakfastquay.com/attachments/download/17/rubberband-1.6.0-gpl-executable-osx-universal.tar.bz2'
  homepage 'http://breakfastquay.com/rubberband/'
  md5 '904137cae1b572a6dd268be2186a146a'
  version '1.6.0'

  def install
    bin.install 'rubberband'
  end
end
