# Hawaiʻi CKMR Workshop 2026

A Quarto book published as a static website with GitHub Pages.

## Preview and render

Install [Quarto](https://quarto.org/docs/get-started/), then run from this directory:

```sh
quarto preview
./build.sh
```

`./build.sh` renders the website, renders all decks listed in `slides/_quarto.yml`, and copies the slides and their supporting assets into `docs/slides/`. It can be invoked from any directory. To render only the website, use `quarto render`.

The rendered website goes into `docs/`. R code blocks are displayed as participant instructions and are not executed during rendering. Rendering therefore does not require the workshop R packages.

## Update Mark's repository link

Edit **only `mark-repo-url` in `_variables.yml`**, then run `quarto render`. It currently points to `https://github.com/markbravington/hawaii-ckmr-26`.

Use this syntax for every new link to the repository:

```markdown
[Mark's course repository]({{< var mark-repo-url >}})
```

The variable only controls the URL; it does not grant access to a private repository. Mark's repository will be private during the course, and he has invited participants by email. Participants should accept the invitation and sign in to the GitHub account associated with it. Keep private course materials in that repository, rather than copying them into this public site.

## Edit the site

- `index.qmd`: welcome, preparation links, HTML agenda, and materials links.
- `mark-setup.qmd`: Mark's package installation instructions.
- `eric-setup.qmd`: Eric's package installation and app instructions.
- `_quarto.yml`: title, sidebar, page order, and rendering options.
- `styles.css`: small visual adjustments to the Cosmo theme.
- `assets/`: the original instructor logos, displayed Estimark first (left), Sespe StatGen second (right).


## Publish with GitHub Pages

1. Run `./build.sh` and review the website and slides.
2. Commit and push the source files **and `docs/`** to the GitHub repository.
3. In the repository's **Settings → Pages**, select **Deploy from a branch**, choose the branch containing the site, and select **`/docs`** as the folder.

The included `.nojekyll` file is copied into the output to let GitHub Pages serve Quarto's static files directly. After future content changes, render again and commit/push the updated source and `docs/` output.
