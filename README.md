# wemble.com

Holding page for Wemble Development Corporation.

Jekyll + Tailwind CSS (CDN) + Docker (Alpine nginx). Previous site preserved as tag `pre-stealth-20260817`.

Do not deploy unless asked.

## Local

```bash
bundle exec jekyll serve
```

## Docker

```bash
docker build -t wemble .
docker run -p 80:80 wemble
```
