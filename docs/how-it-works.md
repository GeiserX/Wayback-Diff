# How it works

## Wayback Machine cleaning

When a Wayback Machine URL is detected, the tool automatically:

1. **Removes header artifacts** -- strips analytics scripts, playback scripts, and banner CSS injected by the Wayback Machine.
2. **Removes footer comments** -- removes archival metadata and copyright notices.
3. **Restores URLs** -- converts `web.archive.org/web/…/` prefixed URLs back to their originals.
4. **Normalizes content** -- handles whitespace and formatting differences introduced by archival.

## Significance scoring

Every detected change is categorized:

| Level | Examples |
|-------|----------|
| **High** | Structural changes, content text, meta tags, scripts, stylesheets |
| **Medium** | Attribute changes, inline styling, div/span modifications |
| **Low** | Whitespace, comments, minor formatting |

## Intelligent comparison

The diff engine:
- Focuses on meaningful content changes
- Ignores noise like timestamps and auto-generated IDs
- Provides context around each change
- Groups results by significance for fast review

## Comparison with similar tools

| Feature | **Wayback-Diff** | [htmldiff](https://github.com/ian-ross/htmldiff) | [diff2html](https://github.com/rtfpessoa/diff2html) | [BackstopJS](https://github.com/garris/BackstopJS) | [Percy](https://percy.io) |
|---------|:-:|:-:|:-:|:-:|:-:|
| HTML-aware semantic diff | Yes | Yes | No | No | No |
| Wayback Machine artifact cleaning | **Yes** | No | No | No | No |
| Significance scoring | **Yes** | No | No | No | No |
| Visual (screenshot) comparison | Yes | No | No | Yes | Yes |
| Multi-browser support | Yes | N/A | N/A | Yes | Yes |
| Site-wide crawl and compare | Yes | No | No | Yes | No |
| Markdown report generation | Yes | No | No | No | No |
| CI/CD exit codes | Yes | No | No | Yes | Yes |
| Self-hosted / no SaaS | Yes | Yes | Yes | Yes | No |
| Free and open source | GPL-3.0 | MIT | MIT | MIT | Freemium |
