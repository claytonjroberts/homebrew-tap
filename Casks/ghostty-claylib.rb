cask "ghostty-claylib" do
  # Every push to claylib publishes a new build; Sparkle updates the app in place.
  version :latest
  sha256 :no_check

  url "https://github.com/claytonjroberts/ghostty/releases/latest/download/Ghostty.zip"
  name "Ghostty (claylib)"
  desc "Clayton's fork of the Ghostty terminal"
  homepage "https://github.com/claytonjroberts/ghostty"

  auto_updates true
  conflicts_with cask: "ghostty"
  depends_on macos: ">= :ventura"

  app "Ghostty.app"
  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"

  zap trash: [
    "~/Library/Application Support/com.mitchellh.ghostty",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
  ]
end
