# Mesh-LLM Homebrew tap

This is the canonical Homebrew tap for
[mesh-llm](https://github.com/Mesh-LLM/mesh-llm).

## Install

```bash
brew install Mesh-LLM/tap/mesh-llm
```

The formula currently supports Apple Silicon Macs. Homebrew will add this tap
automatically when the fully qualified formula name is used.

## Update

```bash
brew update
brew upgrade mesh-llm
```

## Uninstall

```bash
brew uninstall mesh-llm
brew untap Mesh-LLM/tap
```

## Release ownership

[`Mesh-LLM/mesh-packaging`](https://github.com/Mesh-LLM/mesh-packaging) is the
canonical source for the rendered formula. This repository automatically
mirrors the `mesh-llm.rb` asset from the latest non-prerelease packaging
release after validating and testing it.

Both validation workflows trust only the formula they audit before loading it.
An unchanged scheduled sync skips `brew audit`, `brew install`, and `brew test`.
To exercise the complete sync validation path without publishing, run:

```bash
gh workflow run sync.yml --repo Mesh-LLM/homebrew-tap -f dry_run=true
```

Manual runs default to this dry run and validate even an unchanged formula.
Scheduled runs continue publishing changed formulas after validation. A manual
run with `dry_run=false` can also publish a changed formula.

Report packaging problems in
[`Mesh-LLM/mesh-packaging`](https://github.com/Mesh-LLM/mesh-packaging/issues)
and runtime problems in
[`Mesh-LLM/mesh-llm`](https://github.com/Mesh-LLM/mesh-llm/issues).
