#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
```{r}
#| label: setup-packages
#| code-summary: "Load packages"
#| message: false
#| warning: false

pkg_list <- c(
  "tidyverse", "tidylog", "readxl", "stringi",
  "magrittr", "clipr", "knitr", "kableExtra",        
  "rgnparser", "flora", "DataEditR", "here", "scales"                        
)

# If necessary, install missing packages
# new_packages <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]
# if(length(new_packages)) install.packages(new_packages)

invisible(lapply(pkg_list, function(x) 
  library(x, character.only = TRUE, quietly = TRUE)))
#
#
#
#
#| label: load-data

data = readRDS(here::here("02_organized_data.rds"))

glimpse(data)
#
#
#
#
#
#
#
#| label: data-summary

# Presence of species list
data |>
  count(species_list) |>
  mutate(prop = n / sum(n))

# Identification methods
data |>
  count(identification_method) |>
  mutate(prop = n / sum(n))

# Nomenclature source
data |>
  count(nomenclatura_source) |>
  mutate(prop = n / sum(n))

# Voucher collection
data |>
  count(vouchers) |>
  mutate(prop = n / sum(n))

#
#
#
#
#| label: summary-data
#| code-summary: "Summary data"

summary <- list(
  species_list = data |>
    count(species_list) |>
    mutate(prop = round(100 * n / sum(n), 1)),
  identification_method = data |>
    count(identification_method) |>
    mutate(prop = round(100 * n / sum(n), 1)),
  nomenclatura_source = data |>
    count(nomenclatura_source) |>
    mutate(prop = round(100 * n / sum(n), 1)),
  vouchers = data |>
    count(vouchers) |>
    mutate(prop = round(100 * n / sum(n), 1))
)

summary
#
#
#
#
#| label: plot-identification-method

data |>
  count(identification_method) |>
  mutate(prop = n / sum(n)) |>

  ggplot(aes(x = identification_method, y = prop)) +
  geom_col(width = 0.5) +
  scale_y_continuous(labels = percent) +
  labs(
    x = "Método de identificação",
    y = "Proportions",
  ) +
  theme_classic() +
  theme(text = element_text(font = "Aptos"))

```
#
# Nomenclatura
data |>
  count(nomenclatura_source) |>
  ggplot(aes(x = nomenclatura_source, y = prop)) +
  geom_col() +
  scale_y_continuous(labels = scales::percent) +
  labs(x = "Fonte de nomenclatura reportada",
       y = "Proporção de estudos")
#
#
#
