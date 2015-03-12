cask :v1 => 'rstudio' do
  version '0.99.332'
  sha256 'f0c71871c879a5f04fbd750c8d6d78c9845723c7cc829210bb9b4073e0c42688'

  # rstudio.org is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
