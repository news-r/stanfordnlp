stanfordnlp <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to scipy
  stanfordnlp <<- reticulate::import("stanfordnlp", delay_load = TRUE)
}