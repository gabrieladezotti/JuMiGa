# Invisible taxonomy
## How is plant identification reported in vegetation studies?

This repository contains data, analysis documents, and figures for a preliminary assessment of taxonomic reporting in vegetation-ecology studies.
We examine whether species lists and nomenclatural references are accompanied by clear documentation of how plants were identified.
The project also proposes the Taxonomic Identification Transparency Guide, a framework encouraging standardized, machine-readable species lists accompanied by identification documentation.

## Repository structure
```text
.
├── abstract/
│   ├── data/
│   ├── scripts/
│   └── [pilot workflow spreadsheet]
├── poster/
│   ├── data/
│   └── scripts/
├── protocol.qmd
├── identification.png
└── reporting_dim.png
```
### `abstract/`
Data and analysis documents associated with preparation of the abstract.

- `data/`: datasets used or produced during this stage.
- `scripts/`: data organization and analysis documents.

### `poster/`
Data and analysis documents associated with preparation of the poster.

- `data/`: datasets used for the poster analysis.
- `scripts/`: code and analysis documents used to prepare poster results.

### Root-level files
- `protocol.qmd`: project protocol document.
- `identification.png`: figure showing the distribution of identification-reporting categories.
- `reporting_dim.png`: figure summarizing the four assessed reporting dimensions.

## Study scope
The preliminary poster analysis includes 96 vegetation studies published between 2023 and 2025 in:

- Journal of Vegetation Science
- Applied Vegetation Science
- Journal of Ecology

Four reporting dimensions were assessed:
| Dimension | Assessment |
|---|---|
| Species lists | Whether a species list was available |
| Identification procedures | Whether identification was unreported, vaguely described, or explicitly documented |
| Nomenclatural sources | Whether a nomenclatural source was cited |
| Vouchers | Whether voucher specimens were mentioned |

We assess reporting, not identification accuracy. A reporting gap does not demonstrate that identification was performed incorrectly.

## Main variables
Each row in the analysis dataset represents one study.

| Variable | Description | Categories used in the poster analysis |
|---|---|---|
| `species_list` | Availability of a species list | `yes`, `no` |
| `identification_method` | Documentation of identification procedures | `explicit`, `vague`, `no` |
| `nomenclatura_source` | Citation of a nomenclatural source | `yes`, `no` |
| `vouchers` | Mention of voucher specimens | `yes`, `no` |


For identification procedures, `no` means that the procedure was not reported. 
For the other dimensions, `no` indicates that the reporting criterion was not met, not necessarily that the underlying practice was absent.

## Preliminary poster results
All percentages below use the full sample of 96 studies.

| Reporting criterion | Number of studies | Percentage |
|---|---:|---:|
| Species list available | 81 | 84.4% |
| Identification explicitly documented | 10 | 10.4% |
| Nomenclatural source cited | 46 | 47.9% |
| Vouchers mentioned | 4 | 4.2% |

Identification reporting was classified as:
| Category | Number of studies |
|---|---:|
| Not reported | 78 |
| Vague | 8 |
| Explicit | 10 |


## Taxonomic Identification Transparency Guide
The proposed guide links standardized, machine-readable species lists with clear documentation of identification procedures.

Its intended components include:

1. Identification tools, sources, and expertise.
2. Taxonomic resolution and uncertainty.
3. References used to standardize taxon names.
4. Vouchers or other supporting materials, where available.
5. Links between taxon lists, community data, and identification documentation.

The guide is a proposal under development, not an established or validated reporting standard.
Its purpose is to support both researchers generating data and those reusing them by improving traceability and enabling informed assessment of data suitability for reuse.

## Transparency and reuse
This repository aims to support reproducible research and the FAIR principles.

## Project status
Preliminary analysis and reporting-guide development.
Data, code, and interpretations may change as the project progresses.

## Computational environment
- R version: 4.6.1 (2026-06-24 ucrt)
- Package versions: recorded in `renv.lock` at the repository root.
- Last analysis update: 2026-10-15.
- Session information: available in `session-info.txt`.

To restore the recorded package environment, open the project and run:

```r
renv::restore()
```
## Citation
If you use the data, code, or documentation in this repository, please cite:

Dezotti G and Barbosa L M. (2026). *Invisible taxonomy: How is plant identification
reported in vegetation studies?*
GitHub. https://github.com/gabrieladezotti/JuMiGa

Please indicate the release version or commit used.

## License
Unless otherwise noted, original materials in this repository,
including review data, analysis scripts, documentation, and figures,
are licensed under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

## Contact

Gabriela Dezotti  
Universidade Estadual Paulista (UNESP), Rio Claro, Brazil  
gabriela.dezotti@unesp.br
