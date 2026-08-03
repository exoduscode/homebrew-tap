# ExodusCode Homebrew tap

This repository distributes ExodusCode command-line tools through Homebrew.
Homebrew is the supported installation channel for macOS end users.

## Install lsusers

```bash
brew install exoduscode/tap/lsusers
```

## Updating the lsusers formula

Stable `lsusers` releases open a pull request using a GitHub App credential
scoped only to this tap. The pull request must pass audit, source installation,
formula tests, and dependency review before a code owner approves it.

For manual recovery, download the tagged archive and calculate its checksum:

```bash
curl -L \
  https://github.com/exoduscode/lsusers/archive/refs/tags/v0.1.3.tar.gz \
  -o lsusers-v0.1.3.tar.gz
shasum -a 256 lsusers-v0.1.3.tar.gz
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

Every formula update must be merged through a pull request after all required
checks pass. Direct updates to `main` are blocked.
