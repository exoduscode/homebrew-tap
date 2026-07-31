# ExodusCode Homebrew tap

This repository distributes ExodusCode command-line tools through Homebrew.
Homebrew is the supported installation channel for macOS end users.

## Install lsusers

```bash
brew install exoduscode/tap/lsusers
```

## Updating the lsusers formula

Download the tagged GitHub archive and calculate its checksum:

```bash
curl -L \
  https://github.com/exoduscode/lsusers/archive/refs/tags/v0.1.2.tar.gz \
  -o lsusers-v0.1.2.tar.gz
shasum -a 256 lsusers-v0.1.2.tar.gz
```

Update the formula URL, version assertions, and SHA-256 together in a pull
request.

## Validate locally

From the tap checkout:

```bash
brew tap --custom-remote exoduscode/tap "$PWD"
brew audit --strict --formula exoduscode/tap/lsusers
brew install --build-from-source exoduscode/tap/lsusers
brew test exoduscode/tap/lsusers
```

Open the first formula update as a pull request and merge it only after CI
passes. Automatic cross-repository updates are intentionally deferred.
