# wemble.com

The website for [Wemble Development Corporation](https://wemble.com) — a one-person indie dev shop using AI to punch above its weight.

Built with Jekyll and served via nginx on [Dokku](https://dokku.com/).

[![License: MIT][mit-badge]][mit-url]

[mit-badge]: https://img.shields.io/badge/license-MIT-blue.svg
[mit-url]: https://github.com/wembledev/wemble.com/blob/main/LICENSE

## Stack

- **Static site:** [Jekyll](https://jekyllrb.com/)
- **Styling:** [Tailwind CSS](https://tailwindcss.com/) (CDN)
- **Syntax highlighting:** [Prism.js](https://prismjs.com/)
- **Diagrams:** [Mermaid](https://mermaid.js.org/)
- **Hosting:** Docker (Alpine + nginx) on Dokku

## Development

```bash
# Install Jekyll
gem install jekyll bundler

# Serve locally
jekyll serve

# Build
jekyll build
```

The built site lands in `_site/`.

## Docker

```bash
# Build and run
docker build -t wemble .
docker run -p 5000:5000 wemble
```

Or deploy to any Dokku host:

```bash
git remote add dokku dokku@your-server:wemble.com
git push dokku main
```

## Structure

```
├── _includes/       # Header, footer partials
├── _layouts/        # Page templates
├── _posts/          # Blog posts (markdown)
├── assets/          # Images, CSS
├── blog/            # Blog index
├── contact/         # Contact page
├── privacy/         # Privacy policy
├── products/        # Product pages
├── work/            # Work/portfolio page
├── index.html       # Homepage
├── Dockerfile       # Production container
└── conf.d/          # nginx config
```

## License

[MIT](LICENSE)
