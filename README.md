
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

<!-- badges: end -->

# stanfordnlp

Stanford NLP in R.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("news-r/stanfordnlp")
```

## Example

Reproduction of [quick
example](https://stanfordnlp.github.io/stanfordnlp/installation_usage.html)

``` r
library(stanfordnlp)

reticulate::use_virtualenv("./env")

# Quick Example from site
# https://stanfordnlp.github.io/stanfordnlp/installation_usage.html
download_model(lang = "en")
pipeline <- create_pipeline()
doc <- pipeline("Barack Obama was born in Hawaii.  He was elected president in 2008.")
doc$sentences[[1]]$print_dependencies()
```
