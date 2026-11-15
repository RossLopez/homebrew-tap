# Homebrew tap for Minutes

[Minutes](https://github.com/RossLopez/minutes) is a free, open source meeting recorder for Macs with Apple silicon. It transcribes and summarizes meetings entirely on your Mac.

```bash
brew install --cask rosslopez/tap/minutes
```

Homebrew keeps it up to date, so Minutes' own update checks are off for this copy:

```bash
brew upgrade --cask minutes
```

`brew uninstall --zap --cask minutes` removes the app's settings and caches, but never your meetings in `~/Minutes`.

The cask in `Casks/minutes.rb` is updated automatically by each Minutes release. Please report problems in the [Minutes repository](https://github.com/RossLopez/minutes/issues).
