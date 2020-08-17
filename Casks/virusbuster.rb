cask "virusbuster" do
  if MacOS.release >= :catalina
    version '10.0.1686'
    sha256 '1ffc79ff269a1ad6213f377e8411e773f97e3b5080197749da0790db7c3e82ca'
    url "https://files.trendmicro.com/products/iTIS/10.0/GM3/jp/Virus%20Buster%20for%20Mac-#{version}.dmg"
  end

  name 'virusbuster'
  desc ''
  homepage 'http://www.trendmicro.co.jp'
  app 'PackageSelector.app'
  license :commercial
end
