cask "ctrl-v-terminal" do
  version "1.2.40"
  sha256 "ada8c56fd26309f5df332eec4e47e31980dca9bc6e31dcc3840dc92cfe51b03f"

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
