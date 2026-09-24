# Homebrew Mimi

Official [Homebrew](https://brew.sh) tap for **[mimi](https://github.com/nkwabyte/mimi)** — the interactive macOS junk and developer cache cleaner.

## Installation

```bash
brew install nkwabyte/mimi/mimi
```

Or tap first, then install:

```bash
brew tap nkwabyte/mimi
brew install mimi
```

## Update

```bash
brew update
brew upgrade mimi
```

## Usage

```bash
# Scan only (preview reclaimable space)
mimi

# Interactive cleaning
mimi --clean

# Safe automated cleaning
mimi --clean --yes
```

For full documentation and advanced options, see the main [mimi repository](https://github.com/nkwabyte/mimi).
