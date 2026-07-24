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

The `bast` formula is updated automatically when a new stable release is tagged.
The `bast-nightly` formula is updated automatically on every push to `master`.
