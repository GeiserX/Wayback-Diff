<p align="center">
  <img src="https://raw.githubusercontent.com/GeiserX/Wayback-Diff/main/docs/images/banner.svg" alt="Wayback-Diff banner" width="900"/>
</p>

<p align="center">
  <strong>Detect meaningful differences between web pages, with Wayback Machine artifact cleaning, visual comparison and significance scoring.</strong>
</p>

<p align="center">
  <a href="https://pypi.org/project/wayback-diff/"><img src="https://img.shields.io/pypi/v/wayback-diff?style=flat-square" alt="PyPI"></a>
  <a href="https://github.com/GeiserX/Wayback-Diff/releases/latest"><img src="https://img.shields.io/github/v/release/GeiserX/Wayback-Diff?color=orange" alt="Version"/></a>
  <a href="https://github.com/GeiserX/Wayback-Diff/actions/workflows/main.yml"><img src="https://github.com/GeiserX/Wayback-Diff/actions/workflows/main.yml/badge.svg" alt="CI"/></a>
  <a href="https://github.com/GeiserX/Wayback-Diff/blob/main/LICENSE"><img src="https://img.shields.io/github/license/GeiserX/Wayback-Diff" alt="License"/></a>
  <a href="https://codecov.io/gh/GeiserX/Wayback-Diff"><img src="https://codecov.io/gh/GeiserX/Wayback-Diff/graph/badge.svg" alt="codecov"/></a>
</p>

Comparing web pages gets hard once Wayback Machine injections, whitespace noise and visual changes the DOM does not show come into play. Wayback-Diff is a CLI that handles all three and tells you how much each change matters.

## Features

- Strips Wayback Machine banners, analytics and playback scripts, and URL rewrites, so you compare the real content.
- Tags every change High, Medium or Low.
- Screenshots in Chrome, Firefox, Edge and Opera, with side-by-side and pixel-diff images (`--visual`).
- Site-wide crawl and compare with `--traverse --max-depth N`.
- Text, JSON and unified diff output, plus Markdown reports (`--markdown`).
- CI exit codes: `0` no changes, `1` low or medium, `2` high.
- Installs from PyPI, from source or as a Docker image.

## Quick start

```bash
pip install wayback-diff
wayback-diff https://web.archive.org/web/20230101/https://example.com/ https://example.com/
```

Add `--visual --markdown` for screenshots and a report (`pip install "wayback-diff[visual]"` first). Needs Python 3.10 or newer; the source and Docker installs are in [Getting started](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/getting-started.md).

## Documentation

- [Getting started](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/getting-started.md): PyPI, source, Docker
- [Usage](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/usage.md): options, visual comparison, Markdown reports, output formats, and CI/CD gates on the exit codes
- [How it works](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/how-it-works.md): cleaning, significance scoring, comparison with similar tools
- [Development](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/development.md): tests and contributing
- [Related projects](https://github.com/GeiserX/Wayback-Diff/blob/main/docs/related.md)

## License

[GPL-3.0-or-later](https://github.com/GeiserX/Wayback-Diff/blob/main/LICENSE)
