cask "minutes" do
  version "0.2.0"
  sha256 "f8ff0a3c28bc36c42e9d672c101fa1b1971413f19b25e3d66c9d3d370f8516d2"

  url "https://github.com/RossLopez/minutes/releases/download/v#{version}/Minutes-#{version}-arm64.dmg"
  name "Minutes"
  desc "Local meeting recorder with transcripts, summaries and chat"
  homepage "https://github.com/RossLopez/minutes"

  livecheck do
    url :url
    strategy :github_latest
  end

  # No auto_updates: Minutes turns its own updater off when this cask installed it, so
  # `brew upgrade` is what updates it.
  depends_on arch: :arm64
  # This macOS or later. Homebrew 7 asks for the bare symbol rather than ">= :golden_gate".
  depends_on macos: :golden_gate

  app "Minutes.app"

  # Settings and caches only. Recordings, transcripts, notes, chats and downloaded models live in
  # ~/Minutes (or wherever the user moved it) and are never removed here.
  zap trash: [
        "~/Library/Application Support/Minutes/library.json",
        "~/Library/Caches/io.github.rosslopez.minutes",
        "~/Library/HTTPStorages/io.github.rosslopez.minutes",
        "~/Library/HTTPStorages/io.github.rosslopez.minutes.binarycookies",
        "~/Library/Preferences/io.github.rosslopez.minutes.plist",
        "~/Library/Saved Application State/io.github.rosslopez.minutes.savedState",
      ],
      rmdir: "~/Library/Application Support/Minutes"
end
