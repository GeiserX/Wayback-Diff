# Usage

## Quick start

```bash
pip install wayback-diff

# Compare two pages
wayback-diff https://example.com/old https://example.com/new

# Compare a Wayback snapshot with the live site
wayback-diff https://web.archive.org/web/20230101/https://example.com/ https://example.com/

# Full report: visual diff + markdown
wayback-diff https://old.example.com https://new.example.com --visual --markdown
```

## Basic comparison

```bash
wayback-diff https://example.com/page1 https://example.com/page2
```

## Wayback Machine support

The tool automatically detects Wayback Machine URLs and cleans injection artifacts before comparing:

```bash
# Archive vs. live site
wayback-diff https://web.archive.org/web/20230101/https://example.com/ https://example.com/

# Two archive snapshots
wayback-diff \
  https://web.archive.org/web/20230101/https://example.com/ \
  https://web.archive.org/web/20230601/https://example.com/
```

## Output formats

```bash
# Save to file
wayback-diff url1 url2 -o diff.txt

# JSON (for programmatic consumption)
wayback-diff url1 url2 --format json

# Unified diff
wayback-diff url1 url2 --format unified
```

## Site-wide traversal

```bash
# Crawl and compare across linked pages (depth-limited)
wayback-diff url1 url2 --traverse --depth 2
```

## Advanced options

| Flag | Description |
|------|-------------|
| `--no-clean-wayback` | Disable Wayback Machine artifact removal |
| `--no-ignore-whitespace` | Treat whitespace changes as significant |
| `--timeout N` | Set HTTP timeout in seconds (default: 30) |
| `--verbose` | Enable detailed logging |

## Visual comparison

Take screenshots in one or more browsers and generate side-by-side difference images:

```bash
# Auto-detect all installed browsers
wayback-diff url1 url2 --visual

# Specific browsers
wayback-diff url1 url2 --visual --browsers chrome firefox edge opera

# Custom viewport
wayback-diff url1 url2 --visual --viewport-width 1280 --viewport-height 720

# Non-headless mode (for debugging)
wayback-diff url1 url2 --visual --no-headless

# Custom screenshot output
wayback-diff url1 url2 --visual --screenshot-dir ./my-screenshots
```

Visual comparison generates:
- Screenshots of both pages per browser
- Side-by-side comparison images
- Pixel-level difference highlighting (red overlay marks changes)

---

## Markdown reports

Generate comprehensive Markdown reports that include everything in a single reviewable document:

```bash
wayback-diff url1 url2 --visual --markdown --report-dir ./reports
```

Each report contains:
- Executive summary with change statistics
- Visual comparison screenshots (when `--visual` is used)
- Changes grouped by significance (High / Medium / Low)
- Site-wide results (when `--traverse` is used)
- Actionable recommendations

## Output format details

### Text (default)

Summary statistics, significance breakdown, and detailed changes with context lines.

### JSON

Structured output for programmatic processing:

```json
{
  "summary": {
    "total_changes": 15,
    "added": 5,
    "removed": 3,
    "modified": 7,
    "high_significance": 2,
    "medium_significance": 8,
    "low_significance": 5
  },
  "changes": [
    {
      "type": "modified",
      "old_text": "...",
      "new_text": "...",
      "significance": "high"
    }
  ]
}
```

### Unified diff

Standard unified diff format, compatible with `patch` and code review tools.
