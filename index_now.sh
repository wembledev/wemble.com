#!/bin/bash

# IndexNow — notify search engines of updated URLs
# Requires INDEXNOW_KEY env var (your verification key)
# Place your key file at: https://yourdomain.com/${INDEXNOW_KEY}.txt

if [ -z "$INDEXNOW_KEY" ]; then
  echo "Error: INDEXNOW_KEY not set. Export it first:"
  echo "  export INDEXNOW_KEY=your-key-here"
  exit 1
fi

HOST="${INDEXNOW_HOST:-wemble.com}"
API_ENDPOINT="https://api.indexnow.org/IndexNow"

PAYLOAD=$(cat <<EOF
{
  "host": "$HOST",
  "key": "$INDEXNOW_KEY",
  "keyLocation": "https://$HOST/$INDEXNOW_KEY.txt",
  "urlList": [
    "https://$HOST/",
    "https://$HOST/privacy/",
    "https://$HOST/llms.txt",
    "https://$HOST/llms-full.txt"
  ]
}
EOF
)

output=$(curl -s -X POST -H "Content-Type: application/json" -d "$PAYLOAD" "$API_ENDPOINT")
echo "$output"
echo "IndexNow API request sent."
