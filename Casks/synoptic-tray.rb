cask "synoptic-tray" do
  version "0.2.2"
  depends_on macos: ">= :ventura"

  if Hardware::CPU.arm?
    sha256 "37b6b9d7738b0d6d360e87126cadb060e300080606cb1d2199f3c5785e701117"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-arm64.dmg"
  else
    sha256 "0ed753dcf98af3ae11362dd7ee2bac6d7da95b7bba3139523d5e0470607bd7ab"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-x86_64.dmg"
  end

  name "Synoptic Tray"
  desc "Menu bar app for Synoptic"
  homepage "https://github.com/aumgn/synoptic"

  app "Synoptic Tray.app"

  uninstall quit: "cloud.aumgn.synoptictray"
end
