# Genetics fundamentals conversion

Source: the user-supplied `Genetics Fundamentals.pptx` and matching PDF. All 31 slides retain their original order. Headings and prose have been lightly edited for readability; no additional slides or illustrative figures have been introduced.

## Editable content and original assets

Explanatory text, mathematical notation, equations, and the conditional genotype-probability matrix are Markdown/LaTeX in `genetics-fundamentals.qmd`. Text intrinsic to the original raster figures remains part of those images.

PNG figures were extracted unchanged from the PPTX. The SVG pedigree variants embed the original pedigree PNG and reproduce the original colored PowerPoint ellipses at their source coordinates. The enumeration SVGs reproduce the original numbered circles and allele dots; the highlighted versions add the original PowerPoint rectangles. These are extractions of the supplied artwork rather than newly designed illustrations.

The Cotterman coefficient table and final linked/unlinked density plot remain original raster images. Their source slide numbers are 18 and 31, respectively. The deck's speaker notes record source-slide provenance for the converted content.

## Animation mapping

- Slide 13: three click groups, matching the PPTX timing: colored gene copies on the pedigree; the two possible transmitted copies; the parent-offspring conclusion and coefficient vector.
- Slide 15: one click group, matching the original grouping of the two case outlines and the two coefficient calculations.
- Slide 18: one click group, revealing the highlighted table rows together with the explanatory text.

## Mathematical corrections and clarifications

- Slide 27: corrected the unrelated coefficient vector from `(0,0,0)` in the supplied equation to `(1,0,0)`. Cotterman coefficients sum to one.
- Slide 29: clarified that factorizing the likelihood across variants assumes independence of the pair's genotype observations **across loci**. It does not assume independence between the related individuals at a locus.
- Slide 30: qualified the normal approximation with “under suitable conditions”; a large marker count alone does not guarantee a normal sum in the presence of dependence.
- Slide 16: retained the full-sibling result `(1/4,1/2,1/4)` but removed the source's overly broad assertion that only self and full siblings can have nonzero kappa-2 without individual inbreeding. More complicated pedigrees, including double first cousins in the source's own table, can also have nonzero kappa-2.

The supplied deck ends at the linked/unlinked variance comparison. Topics listed in the outline but not yet covered in those 31 slides have not been filled in with new material.
