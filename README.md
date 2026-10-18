# Aboredworm Tap

## MiniLaunch

A native macOS app launcher with fuzzy search. Requires macOS 12+ and Xcode Command Line Tools.

```sh
brew install --HEAD aboredworm/tap/minilaunch
minilaunch --toggle
```

MiniLaunch currently builds from the `main` branch. No prebuilt release is required. The app stays in the background after hiding it. Quit with `minilaunch --quit` before upgrading:

```sh
minilaunch --quit
brew upgrade --fetch-HEAD aboredworm/tap/minilaunch
```

Bind `minilaunch --toggle` to a keyboard shortcut. If your shortcut manager does not load your shell's PATH, use the absolute path printed by `echo "$(brew --prefix)/bin/minilaunch"`.

Configuration and usage: [MiniLaunch README](https://github.com/aboredworm/minilaunch#readme).

In a `Brewfile`:

```ruby
tap "aboredworm/tap"
brew "minilaunch", args: ["HEAD"]
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
