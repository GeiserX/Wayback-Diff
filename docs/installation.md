# Installation

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
docker build -t wayback-diff .
docker run --rm wayback-diff https://example.com/a https://example.com/b
```

## Supported versions

  <a href="https://www.python.org/downloads/"><img src="https://img.shields.io/badge/python-3.8%20%7C%203.9%20%7C%203.10%20%7C%203.11-blue?logo=python&logoColor=white" alt="Python Versions"/></a>
  <a href="https://hub.docker.com/"><img src="https://img.shields.io/badge/docker-ready-blue?logo=docker&logoColor=white" alt="Docker"/></a>
