cask 'google-messages-nativefied' do
  version '1.0.0'
  sha256 '0b2cbad6113fd68c10198ba99f3e910872353694c1f5d79eba660f19d44ce79f'

  url "https://github.com/homebrew-ndrpnt/google-messages-nativefied/releases/download/v#{version}/google-messages-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/homebrew-ndrpnt/google-messages-nativefied/releases.atom'
  name 'Google Messages'
  homepage 'https://github.com/homebrew-ndrpnt/google-messages-nativefied/'

  app 'Google Messages-darwin-x64/Google Messages.app'

  zap trash: [
               '~/Library/Caches/com.electron.google-messages',
               '~/Library/Application Support/google-messages-nativefier-11f104',
               '~/Library/Saved Application State/com.electron.google-messages.savedState',
               '~/Library/Preferences/com.electron.google-messages.plist',
             ]
end
