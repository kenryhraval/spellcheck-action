# Spellcheck Action

This GitHub Action automatically checks all Markdown (`.md`) files in your repository for grammar, style, and spelling issues using [Proselint](https://proselint.com/) and [WriteGood](https://github.com/btford/write-good).

## Features

- **Grammar and Style Analysis**: Detects common writing issues with `proselint`.
- **Readability Checks**: Highlights weak or unclear language with `write-good`.

## Usage

To use this action, include the following in your `.github/workflows/spellcheck.yml` workflow file:

```yaml
name: Spellcheck

on:
  pull_request:
  push:

jobs:
  check-markdown:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v3
      - name: Run Spellcheck
        uses: kenryhraval/spellcheck-action@v1
```
