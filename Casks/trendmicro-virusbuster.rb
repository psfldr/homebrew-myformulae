cask "trendmicro-virusbuster" do
  if MacOS.version == :catalina
    version '10.0.1686'
    sha256 '1ffc79ff269a1ad6213f377e8411e773f97e3b5080197749da0790db7c3e82ca'
    url "https://files.trendmicro.com/products/iTIS/10.0/GM3/jp/Virus%20Buster%20for%20Mac-#{version}.dmg"
  end

  pkg 'PackageSelector.app/Contents/Resources/itisinstall.pkg'
  uninstall script: {
    executable: '/Applications/TrendMicro.localized/UninstallerLauncher.app/Contents/MacOS/UninstallerLauncher',
    sudo: false
  }

  name 'ウイルスバスター for Mac'
  desc 'セキュリティ対策ソフト(体験版)。インストール時にパスワードが必要。「ホーム→使用期限: あと30日」をクリックしシリアル番号入力。'
  homepage 'https://helpcenter.trendmicro.com/ja-jp/article/tmka-17586'
end

