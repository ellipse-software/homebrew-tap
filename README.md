# Ellipse Software Homebrew Tap

Homebrew formulae for [Ellipse Software](https://github.com/ellipse-software) projects.

## Usage

```sh
brew tap ellipse-software/tap
brew install bast
```

For nightly builds from `master`:

```sh
brew tap ellipse-software/tap
brew install bast-nightly
```

Stable and nightly formulae conflict with each other. Only install one at a time.

## Formulae

| Formula | Description |
| --- | --- |
| [bast](https://github.com/ellipse-software/bast) | SSH host picker and key manager |
| [bast-nightly](https://github.com/ellipse-software/bast) | Nightly builds from `master` |

Both formulae compile from source with Homebrew's `go`. This tap does not ship bottles.

The `bast` formula is updated automatically when a new stable release is tagged.
The `bast-nightly` formula is updated automatically on every published nightly.

`Formula/bast.rb` is written in `homebrew/core` style. To submit it there, copy the file to `Formula/b/bast.rb`, delete the `conflicts_with "bast-nightly"` line, and let BrewTestBot add the `bottle` block.
