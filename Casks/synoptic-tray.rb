cask "synoptic-tray" do
  version "0.2.4"
  depends_on macos: ">= :ventura"

  if Hardware::CPU.arm?
    sha256 "46f98f3c6c7b8dc9ad0e470dc6a68f1295b1c406b4897e9dceebff1220c4a807"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-arm64.dmg"
  else
    sha256 "b2b0ea655762a473b19bebabadaa877dc2ce0b2d413d73dda9a0d89118f10d94"
    url "https://github.com/aumgn/synoptic/releases/download/v#{version}/Synoptic-Tray-v#{version}-macos-x86_64.dmg"
  end

  name "Synoptic Tray"
  desc "Menu bar app for Synoptic"
  homepage "https://github.com/aumgn/synoptic"

  app "Synoptic Tray.app"

  uninstall quit: "cloud.aumgn.synoptictray"
end
