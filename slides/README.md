# Workshop slides

`genotyping.qmd` merges the 2022 genotyping section with the 2019 RAD-miscall and microhaplotype material. It uses the shared workshop theme plus `genotyping.css`. See `genotyping-updates.md` for the merge details, current cost references, and branding changes. Its figures are under `assets/genotyping/`.

`genetics-fundamentals.qmd` contains all 31 slides of the supplied Genetics Fundamentals presentation. Text is editable Markdown, and equations and the conditional genotype-probability matrix are LaTeX. Original figures are in `assets/genetics-fundamentals/`; the Cotterman coefficient table remains an image. `workshop.scss` defines the shared presentation styling.

This directory is a separate Quarto project so that Reveal.js presentation settings stay independent of the website's book settings.

To build the website and all slides together, run `./build.sh` from the repository root (or `../build.sh` from this directory). The script copies the complete slide output into `docs/slides/` for GitHub Pages.

From this directory:

```sh
quarto preview genetics-fundamentals.qmd
quarto render
```

Output is written to `_output/genetics-fundamentals.html`, with its supporting files. To copy the rendered presentation into the website, run these commands from this directory after rendering:

```sh
mkdir -p ../docs/slides
cp -R _output/. ../docs/slides/
```

When building both the website and the slides, render the book from the repository root first, then render and copy this slides project. Commit the generated `docs/slides/` alongside the other website output for GitHub Pages. `_output/` is an ignored local build directory.

The deck contains exactly 31 slides, including the title slide. Reveal.js fragments reproduce the staged appearances on source slides 13, 15, and 18. Advance with the arrow keys or slide controls; a click reveals the next group before advancing to the next slide.

The source PDF and PPTX are reference files, not build dependencies. Image credits embedded in the original figures are retained; speaker notes record their source-slide provenance. See `CONVERSION.md` for asset provenance, animation mapping, and corrections to apparent source errors.
