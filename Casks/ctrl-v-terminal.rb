cask "ctrl-v-terminal" do
  version "1.2.5"
  sha256 "555596762a09f9911c5aac39b65c7823a28f1f8779dc5083606b825afb1a1390"

  url "https://github.com/it-worx-nl/ctrl-v-terminal-releases/releases/download/v#{version}/Ctrl-V-Terminal-#{version}-universal.dmg"
  name "Ctrl-V Terminal"
  desc "Tabbed SSH, SFTP and VNC client that pastes images into a remote terminal"
  homepage "https://ctrl-v-terminal.appgrid.eu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships electron-updater and replaces itself, so Homebrew should not
  # treat a newer installed version as drift.
  auto_updates true
  app "Ctrl-V Terminal.app"

  zap trash: [
    "~/Library/Application Support/Ctrl-V Terminal",
    "~/Library/Preferences/com.ctrlvterminal.app.plist",
    "~/Library/Saved Application State/com.ctrlvterminal.app.savedState",
  ]
end
