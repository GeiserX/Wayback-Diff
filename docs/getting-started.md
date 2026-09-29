# Getting started

Wayback-Diff needs Python 3.10 or newer.

## From PyPI

```bash
pip install wayback-diff

# With visual comparison support
pip install wayback-diff[visual]
```

## From source

```bash
git clone https://github.com/GeiserX/Wayback-Diff.git
cd Wayback-Diff
python3 -m venv venv
source venv/bin/activate      # Windows: venv\Scripts\activate
pip install -r requirements.txt
pip install -e .
```

For visual comparison support:

```bash
pip install -e ".[visual]"
```

## Docker

```bash
docker run --rm drumsergio/wayback-diff:1.1.0 https://example.com/a https://example.com/b
```

The image is built for `linux/amd64`; on Apple Silicon add `--platform linux/amd64`. To build the image from a checkout instead: `docker build -t wayback-diff .`, then `docker run --rm wayback-diff <url1> <url2>`.
