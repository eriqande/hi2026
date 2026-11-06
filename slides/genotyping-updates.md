# Genotyping presentation: merge and cost updates

Prepared November 5, 2026. The new deck is `slides/genotyping.qmd`; the two source talks were read without modification.

## What was merged

The 2022 Quarto section beginning “Switch Gears: Genotyping Technology and Genotyping Errors” supplies the main sequence of sequencing, mapping, genotype calling, and targeting methods. Its inheritance and kinship-theory slides are excluded because those subjects are covered in `genetics-fundamentals.qmd`.

The 2019 deck supplies the reference-sequence explanation; the RAD genome-coverage and locus-depth examples; the RAD error section (slides 21–33); amplicon-panel development; SNP phase and microhaplotypes (slides 39–45); and the broader error-model discussion. Overlapping material is merged rather than duplicated. The four historical published-dataset miscall examples are retained individually.

The microhaplotype section includes editable AGT/GCC phased-read examples, the original microhaplot software screenshot, and the heterozygosity and relationship-inference plots from [Baetscher et al. (2018)](https://doi.org/10.1111/1755-0998.12737). The older portrait and article-title screenshots are omitted where an explicit citation communicates the source more clearly.

## Updated costs and yields

These are public listings checked on November 5, 2026. They are examples from specific providers, not universal prices. No provider was contacted and no quote was requested. Currency is preserved; no currency conversion was performed.

| Topic | Earlier wording | New treatment | Current reference |
|:--|:--|:--|:--|
| Sequencing lane | 2022: NovaSeq 6000 S4, 2.5 billion reads/lane, roughly US$5,000/lane. 2019: 400 million reads, roughly US$3,000. | NovaSeq X 10B **150PE** service example: **1.25 billion read-pairs/lane**, **US$1,765 external** or **US$1,535 UC**. Lane sequencing is distinguished from library preparation. | [QB3 Berkeley rates](https://qb3.berkeley.edu/facility/genomics/rates/), effective June 1, 2026. This is the service's published allocation, not the manufacturer's maximum output. |
| RAD/ddRAD | “As low as around US$30/sample.” | Standard ddRAD example: **€34–59/sample**, batch-dependent, average **4 million reads/sample**; standard bioinformatics **€4–7/sample**, separately listed. | [IGATech ddRAD service](https://igatechnology.com/sequencing-services/ddrad-genotyping/). The page does not state a tariff effective date. Its own term “reads” is retained. |
| RAD plus capture | US$1–5/sample, presented as a genotyping-cost example. | Removed the unsupported current numeric promise. The deck asks for project-specific pricing covering panel design, preparation, sequencing, and analysis. | [DArT pricing policy](https://www.diversityarrays.com/services/pricing/) and [quotation interface](https://ordering.diversityarrays.com/quotation.pl). Catalogue pricing is within the ordering system; I did not obtain a comparable public DArTcap all-in price. |
| Amplicon/GT-seq | Roughly US$7/fish, followed by “now it is less.” | Published GT-seq 150 bp fees: **94 samples, US$6,936; 752, US$12,878; 1,880, US$22,894**. Calculated quotients: **US$73.79, US$17.13, and US$12.18/sample**, respectively. | [Oregon State fee 16141](https://fees.oregonstate.edu/Public/ViewIEFeeDetail.aspx?ID=16141&ietype=i), updated April 16, 2025. It includes DNA extraction and genotyping. It is the current public listing checked, not a newly issued 2026 tariff. |

The OSU quotients divide each listed batch fee by its sample count, rounded to cents. They are not a quote for development of a new panel. The deck does not assert that the four providers' service scopes or resulting genotype quality are equivalent.

## Other substantive updates

- **Whole-genome sequencing:** replaced the categorical historical judgement “too expensive / too many variants for CKMR” with a study-specific assessment of genome size, coverage, sample count, error handling, and total cost. This is a design framing, not a claim that WGS is always the best choice.
- **Read units:** the allocation equation explicitly uses usable read-pairs per locus. Paired-end mates are not two independent DNA fragments, and raw output is not the same as usable on-target coverage.
- **Depth and dropout:** distinguished stochastic heterozygote miscalls from systematic allele-specific loss. Removed any implication that a single nominal depth cutoff guarantees accuracy. Layout cropping displays the original RAD diagram and credit while hiding the outdated quotation below it; the image file remains unmodified.
- **Historical results:** the survey estimates and MCMC traces remain the original 2019 figures. They were not recalculated and are not described as universal error rates for the species.
- **Model specification:** retained the source's allele-frequency prior, latent/observed genotype notation, and definition of m. Added an explicitly labelled *illustrative symmetric observation matrix*. The source does not provide its full transition model or prior for m, so this matrix is not claimed to reproduce its original MCMC implementation.
- **Biological assumptions:** made the HWE assumption explicit and identified population structure/inbreeding as alternative explanations for heterozygote deficits. Qualified the claim of small allele-frequency effects by the symmetry assumption.
- **Miscellaneous:** removed the stray `x` after the 2022 zoomed-out alignment image, old workshop-specific timing references, and obsolete employer-specific presentation framing.

## Branding and assets

NOAA presentation backgrounds, slide-master logos, agency footers, and the old affiliation/title material are not included. The old graphical error-model image contained an embedded NOAA logo, so it was replaced entirely by editable notation and equations. Scientific author credits, publisher marks on research evidence, and figure citations are preserved.

`assets/genotyping/provenance.json` maps the 24 copied/extracted source assets. Some source images are retained as reference assets even when their content has been rebuilt in Markdown. The original `.qmd` and `.pptx` remain unchanged; their SHA-256 values before conversion were:

```text
00e13ba2c7fb278cd3b8d7ea8eb20b6f421e9bbf2ce5c1187c8558f2510cd5e2  eric-talk-1.qmd
e21cf84e703d2240e8c5e58a854287050c542355ffdbc2537c09b0a242376e55  genotyping-technologies-and-errors.pptx
```

The shared slide configuration now uses a local, pinned KaTeX 0.16.25 renderer and fonts under `assets/vendor/katex/`, with its MIT license. Both decks therefore render their LaTeX without depending on the external maths CDN. External videos and source links still require internet access.

## Rebuild

From `slides/`:

```sh
quarto render genotyping.qmd
mkdir -p ../docs/slides
cp -R _output/. ../docs/slides/
```

The slide project also renders both decks with `quarto render`. This merge does not add a public website navigation link or publish the site.
