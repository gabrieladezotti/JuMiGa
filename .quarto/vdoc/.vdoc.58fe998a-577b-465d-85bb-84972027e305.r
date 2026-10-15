#
#
#| label: setup-packages
#| code-summary: "Load packages"
#| message: false
#| warning: false

library(tidyverse)
library(janitor)
#
#
#
#

scopus_raw <readr::read_csv(
  "data/poster/scopuscsv",
  show_col_types = FALSE
) |>
  janitor::clean_names()

names(scopus_raw)
#
#
#
