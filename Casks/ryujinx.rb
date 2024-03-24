cask "ryujinx" do
  version "1.1.1244"
  sha256 "b83bc0ba733fe2d6fd744d36e8d333d7918c7de7f18e94c1042a3a3c884e27e9"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Simple, experimental Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ryujinx.app"

  zap trash: "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState"
end
