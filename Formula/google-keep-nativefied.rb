cask 'google-keep-nativefied' do
  version '1.0.0'
  sha256 '819003c4b11a9c120c8e057c11fea89f10059699c5fcf6704f6e8d132b7a65cc'

  url "https://github.com/homebrew-ndrpnt/google-keep-nativefied/releases/download/v#{version}/google-keep-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/homebrew-ndrpnt/google-keep-nativefied/releases.atom'
  name 'Google Keep'
  homepage 'https://github.com/homebrew-ndrpnt/google-keep-nativefied/'

  app 'Google Keep-darwin-x64/Google Keep.app'

  zap trash: [
               '~/Library/Caches/com.electron.google-keep',
               '~/Library/Application Support/google-keep-nativefier-cdf485',
               '~/Library/Saved Application State/com.electron.google-keep.savedState',
               '~/Library/Preferences/com.electron.google-keep.plist',
             ]
end
