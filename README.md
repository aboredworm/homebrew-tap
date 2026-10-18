# Aboredworm Tap

## MiniLaunch

A native macOS app launcher with fuzzy search. Requires macOS 12+ and Xcode Command Line Tools.

```sh
brew install aboredworm/tap/minilaunch
minilaunch --toggle
```

MiniLaunch builds from the latest source release. No prebuilt app binary is required. Use `brew install --HEAD aboredworm/tap/minilaunch` to build the development branch instead. The app stays in the background after hiding it. Quit with `minilaunch --quit` before upgrading:

```sh
minilaunch --quit
brew upgrade aboredworm/tap/minilaunch
```

Bind `minilaunch --toggle` to a keyboard shortcut. If your shortcut manager does not load your shell's PATH, use the absolute path printed by `echo "$(brew --prefix)/bin/minilaunch"`.

Configuration and usage: [MiniLaunch README](https://github.com/aboredworm/minilaunch#readme).

In a `Brewfile`:

```ruby
tap "aboredworm/tap"
brew "minilaunch"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
