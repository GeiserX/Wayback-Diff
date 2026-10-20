FROM python:3.14-slim

WORKDIR /app

# Install system dependencies. ca-certificates is listed to upgrade it: the base
# image ships 20250419, which still trusts the compromised eMudhra intermediates.
RUN apt-get update && apt-get install -y \
    ca-certificates \
    wget \
    gnupg \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Install the package
RUN pip install --no-cache-dir -e .

# Set entrypoint
ENTRYPOINT ["wayback-diff"]
