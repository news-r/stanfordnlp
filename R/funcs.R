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
#' @param dir Path to directory where to save model.
#' 
#' @examples
#' \dontrun{
#' download_model()
#' }
#' 
#' @export
download_model <- function(lang = "en", dir = NULL){
  if(is.null(dir))
    stanfordnlp$download(lang)
  else
    stanfordnlp$download(lang, dir)
}

#' Pipeline
#' 
#' Create a pipeline.
#' 
#' @param ... Parameters (all optional), see details.
#' 
#' @details
#' \itemize{
#'   \item{\code{lang}: Model language.}
#'   \item{\code{treebank}: Treebank code from \url{https://stanfordnlp.github.io/stanfordnlp/models.html}.}
#'   \item{\code{processors}: Processors to use \code{tokenize,mwt,pos,lemma,depparse}.}
#'   \item{\code{models_dir}: Directory where model is stored.}
#'   \item{\code{use_gpu}: Boolean indicating whether to use the machine's GPU.}
#' }
#' 
#' @examples
#' \dontrun{
#' nlp <- create_pipeline()
#' doc <- nlp("Barack Obama was born in Hawaii.")
#' doc$sentences[[0]]$print_dependencies()
#' }
#' 
#' @export
create_pipeline <- function(...){
  stanfordnlp$Pipeline(...)
}