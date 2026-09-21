cask "bubilator88" do
  version "1.5.0"
  sha256 "afbe3ecfc7d670373a3d3f0cbbfc9a380c9c4e22df23f9309705f2c5d6bacea9"

  url "https://github.com/bubio/Bubilator88/releases/download/v#{version}/Bubilator88-v#{version}.dmg"
  name "Bubilator88"
  desc "Behavioral emulator for the NEC PC-8801-FA"
  homepage "https://github.com/bubio/Bubilator88"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Bubilator88.app"

  # NOTE: intentionally do NOT zap ~/Library/Application Support/Bubilator88 —
  # it holds user-provided ROMs and save states that must never be auto-deleted.
  zap trash: [
    "~/Library/Preferences/com.bubio.Bubilator88.plist",
    "~/Library/Saved Application State/com.bubio.Bubilator88.savedState",
  ]

  caveats do
    <<~EOS
      Bubilator88 is not notarized. If macOS blocks the first launch, either
      install with the --no-quarantine flag, or strip the quarantine attribute:

        brew install --cask --no-quarantine bubilator88
        # or, after a normal install:
        xattr -cr "/Applications/Bubilator88.app"

      PC-8801 ROM files are required to boot and are NOT included. Place them in:
        ~/Library/Application Support/Bubilator88/
      See https://github.com/bubio/Bubilator88#rom-files for the file list.
    EOS
  end
end
