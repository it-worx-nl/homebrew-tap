cask "ctrl-v-terminal" do
  version "1.2.1"
  sha256 "5518bb0d5771d96ef8dd91c8d57032902ee9f065aa1afa1f209cb636d3ac1b5e"

  url "https://github.com/it-worx-nl/ctrl-v-terminal-releases/releases/download/v#{version}/Ctrl-V-Terminal-#{version}-universal.dmg",
      verified: "github.com/it-worx-nl/ctrl-v-terminal-releases/"
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
  depends_on macos: ">= :catalina"

  app "Ctrl-V Terminal.app"

  zap trash: [
    "~/Library/Application Support/Ctrl-V Terminal",
    "~/Library/Preferences/com.ctrlvterminal.app.plist",
    "~/Library/Saved Application State/com.ctrlvterminal.app.savedState",
  ]
end
