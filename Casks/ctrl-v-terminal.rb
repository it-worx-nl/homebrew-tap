cask "ctrl-v-terminal" do
  version "1.2.15"
  sha256 "e4c85fe0efce27c24833781eae54a5aa7c92b3513d3abc4f0185587cd7c688c3"

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
