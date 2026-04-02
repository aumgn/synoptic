cask "synoptic-tray" do
  version "0.2.3"
  depends_on macos: ">= :ventura"

  if Hardware::CPU.arm?
    sha256 "081c36e255bd154316bead0ca4edefe065f3283b0903040eedb6286f1c13012a"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-arm64.dmg"
  else
    sha256 "f256652d54f0f3fafd6b225c570ec131fbde72b965e29f195be717711e282dba"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-x86_64.dmg"
  end

  name "Synoptic Tray"
  desc "Menu bar app for Synoptic"
  homepage "https://github.com/aumgn/synoptic"

  app "Synoptic Tray.app"

  uninstall quit: "cloud.aumgn.synoptictray"
end
