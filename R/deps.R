#' Install Dependencies
#' 
#' Install the Stanford NLP dependency.
#' 
#' @param method Installation method. By default, "auto" automatically 
#' finds a method that will work in the local environment. 
#' Change the default to force a specific installation method. 
#' Note that the "virtualenv" method is not available on Windows.
#' @param conda Path to conda executable (or "auto" to find conda using the
#' \code{PATH} and other conventional install locations).
#' 
#' @examples
#' \dontrun{install_stanfordnlp()}
#' 
#' @export
install_stanfordnlp <- function(method = "auto", conda = "auto") {
  reticulate::py_install("stanfordnlp", method = method, conda = conda)
}

#' Download model
#' 
#' Download a language pack.
#' 
#' @param lang Model language.
#' 
#' 
#' @examples
#' \dontrun{
#' download_model()
#' }
#' 
#' @export
download_model <- function(lang = "en"){
  stanfordnlp$download(lang)
}

#' Pipeline
#' 
#' Create a pipeline.
#' 
#' @inheritParams download_model
#' 
#' @details
#' \itemize{
#'   \item{\code{lang}: Model language.}
#'   \item{\code{treebank}: Treebank code from \url{https://stanfordnlp.github.io/stanfordnlp/models.html}..}
#' }
#' 
#' @examples
#' \dontrun{
#' nlp <- create_pipeline()
#' }
#' 
#' @export
create_pipeline <- function(...){
  stanfordnlp$Pipeline(...)
}