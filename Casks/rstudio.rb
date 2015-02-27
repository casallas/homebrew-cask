cask :v1 => 'rstudio' do
  version '0.99.235'
  sha256 '5543e5b9d405259abb6969216a2757366c451b848adaecd42bb48c6855842235'

  # rstudio.org is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
