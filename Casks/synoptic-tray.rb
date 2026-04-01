cask "synoptic-tray" do
  version "0.2.1"
  depends_on macos: ">= :ventura"

  if Hardware::CPU.arm?
    sha256 "79374ef409bfdd8e5ccbc3c615c6b20a19fdd23036fd3612e006eb39a5696e74"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-arm64.dmg"
  else
    sha256 "1ee0d9ea63a636b969426ea1e8382e08899f6f5e9417ef4b15522c7fc9b6bf70"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-x86_64.dmg"
  end

  name "Synoptic Tray"
  desc "Menu bar app for Synoptic"
  homepage "https://github.com/aumgn/synoptic"

  app "Synoptic Tray.app"

  uninstall quit: "cloud.aumgn.synoptictray"
end
