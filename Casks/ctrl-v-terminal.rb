cask "ctrl-v-terminal" do
  version "1.2.39"
  sha256 "014fec15abb46525ca27a55c0b87183caf81037df95c4af28cf58c9b092e9d37"

  url "https://github.com/it-worx-nl/ctrl-v-terminal-releases/releases/download/v#{version}/Ctrl-V-Terminal-#{version}-universal.dmg"
  name "CtrlVTerm"
  desc "Tabbed SSH, SFTP and VNC client that pastes images into a remote terminal"
  homepage "https://ctrlvterm.appgrid.eu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships electron-updater and replaces itself, so Homebrew should not
  # treat a newer installed version as drift.
  auto_updates true
  app "CtrlVTerm.app"

  zap trash: [
    "~/Library/Application Support/ctrl-v-terminal", # the internal name (see INTERNAL_NAME in src/main.js)
    "~/Library/Preferences/com.ctrlvterminal.app.plist",
    "~/Library/Saved Application State/com.ctrlvterminal.app.savedState",
  ]
end
