cask "ctrl-v-terminal" do
  version "1.2.38"
  sha256 "7d8f4804f679ab2c546492af7f2b8789e49aa73dd07135093d7c840452bddf16"

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
    "~/Library/Application Support/Ctrl-V Terminal", # the old name, kept on purpose (see INTERNAL_NAME in src/main.js)
    "~/Library/Preferences/com.ctrlvterminal.app.plist",
    "~/Library/Saved Application State/com.ctrlvterminal.app.savedState",
  ]
end
