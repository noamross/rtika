#' Get Plain Text
#' 
#' If \code{output_dir} is specified, files will have the \code{.txt} file extension.
#'
#' @param input Character vector describing the paths and/or urls to the input documents.
#' @param ... Other parameters to be sent to \code{tika()}.
#' @return A character vector in the same order and with the same length as \code{input}, of plain text. Unprocessed files are \code{as.character(NA)}.
#' @examples
#' \dontrun{
#' batch <- c(
#'  system.file("extdata", "jsonlite.pdf", package = "rtika"),
#'  system.file("extdata", "curl.pdf", package = "rtika"),
#'  system.file("extdata", "table.docx", package = "rtika"),
#'  system.file("extdata", "xml2.pdf", package = "rtika"),
#'  system.file("extdata", "R-FAQ.html", package = "rtika"),
#'  system.file("extdata", "calculator.jpg", package = "rtika"),
#'  system.file("extdata", "tika.apache.org.zip", package = "rtika")
#' )
#' text <- tika_text(batch)
#' }
#' @export
tika_text <- function(input, ...) {
  tika(input = input, output = "text", ...)
}
