cask "ctrl-v-terminal" do
  version "1.2.37"
  sha256 "c6549a8b152865316cd41df74d20993685eb7ec63f8cbb253317fd4227fd3cd4"

  url "https://github.com/it-worx-nl/ctrl-v-terminal-releases/releases/download/v#{version}/Ctrl-V-Terminal-#{version}-universal.dmg"
  name "CtrlVTerm"
  desc "Tabbed SSH, SFTP and VNC client that pastes images into a remote terminal"
  homepage "https://ctrl-v-terminal.appgrid.eu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships electron-updater and replaces itself, so Homebrew should not
  # treat a newer installed version as drift.
  auto_updates true
  app "CtrlVTerm.app"

  zap trash: [
    "~/Library/Application Support/Ctrl-V Terminal", # the old name, kept on purpose (see INTERNAL_NAME in src/main.js)
    "~/Library/Preferences/com.ctrlvterminal.app.plist",
    "~/Library/Saved Application State/com.ctrlvterminal.app.savedState",
  ]
end
