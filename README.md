# homebrew-bubilator88

Homebrew tap for [Bubilator88](https://github.com/bubio/Bubilator88) — a behavioral
emulator for the NEC PC-8801-FA (macOS, Apple Silicon).

## Install

```bash
brew install --cask bubio/bubilator88/bubilator88
```

Or tap first, then install:

```bash
brew tap bubio/bubilator88
brew install --cask bubilator88
```

### Gatekeeper note

Bubilator88 is not notarized. If the first launch is blocked, install with
`--no-quarantine` (or run `xattr -cr` afterwards):

```bash
brew install --cask --no-quarantine bubio/bubilator88/bubilator88
```

## ROM files

PC-8801 ROM files are required to boot and are **not** included. Place them in
`~/Library/Application Support/Bubilator88/`. See the
[main README](https://github.com/bubio/Bubilator88#rom-files) for the list.

## Updating

`Casks/bubilator88.rb` is bumped automatically by the
[release workflow](https://github.com/bubio/Bubilator88/blob/main/.github/workflows/release.yml)
in the main repository on each tagged release.
