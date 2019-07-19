stanfordnlp <- NULL

.onLoad <- function(libname, pkgname) {
  stanfordnlp <<- reticulate::import("stanfordnlp", delay_load = TRUE)
}