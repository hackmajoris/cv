# hackmajoris.github.io

Personal CV site built with Angular 21 and deployed to GitHub Pages.

## Development

```bash
make install  # npm install
make start    # dev server at http://localhost:4200
make test     # unit tests (Vitest)
make build    # production build to dist/cv-app/browser
```

## CV PDF

The downloadable CV is generated from LaTeX source in `cv-latex/cv.tex`.
Requires `pdflatex`.

```bash
make cv      # compile cv.tex and copy to public/assets/cv.pdf
make clean   # remove LaTeX build files
```

## Deployment

Pushes to `main` trigger `.github/workflows/deploy.yml`, which builds the app
and publishes `dist/cv-app/browser` to GitHub Pages.
