# Ctrl-V Terminal for Homebrew

A tabbed SSH, SFTP and VNC client for macOS, Windows and Linux. Copy an image,
press Cmd+V in a terminal, and the file is uploaded to the remote host over
SFTP with its path typed at the cursor.

## Install

```bash
brew tap it-worx-nl/tap
brew install --cask ctrl-v-terminal
```

Updates come with your regular `brew upgrade`. The app can also update itself,
so either route keeps you current.

## Uninstall

```bash
brew uninstall --cask ctrl-v-terminal
```

Add `--zap` to remove saved sessions and preferences as well.

## About

The app is signed and notarised by Apple, so it opens without a Gatekeeper
warning. It is free for up to three saved sessions, with a one-time licence to
remove that limit — no subscription and no account.

* Website: https://ctrl-v-terminal.appgrid.eu/
* Downloads and release notes: https://github.com/it-worx-nl/ctrl-v-terminal-releases

This repository holds only the cask. It is generated from each published
release, so please report problems on the releases repository rather than here.
