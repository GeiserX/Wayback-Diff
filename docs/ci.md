# CI/CD integration

Wayback-Diff returns meaningful exit codes designed for pipeline gates:

| Exit Code | Meaning |
|-----------|---------|
| `0` | No differences detected |
| `1` | Low or medium significance changes |
| `2` | High significance changes detected |

## GitHub Actions example

```yaml
name: Visual Regression Check
on:
  pull_request:

jobs:
  diff:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.11"

      - name: Install Wayback-Diff
        run: |
          pip install -r requirements.txt
          pip install -e ".[visual]"

      - name: Compare staging vs production
        run: |
          wayback-diff \
            https://staging.example.com \
            https://production.example.com \
            --visual --markdown --format json -o diff.json

      - name: Upload report
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: diff-report
          path: reports/
```

## Shell script gate

```bash
wayback-diff "$OLD_URL" "$NEW_URL" --format json -o result.json
EXIT_CODE=$?

if [ $EXIT_CODE -eq 2 ]; then
  echo "BLOCKING: high-significance changes detected"
  exit 1
elif [ $EXIT_CODE -eq 1 ]; then
  echo "WARNING: minor changes detected"
fi
```
