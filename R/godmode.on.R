#' Enable god-mode
#'
#' @description Enables god-mode by overriding praise and encourage.
#'
#' @param pv `logical` that allows switching to proverbs if set to `TRUE`.
#'
#' @return Invisibly returns `NULL`.
#' @importFrom utils installed.packages
#' @export
#'
#' @md
#'
#' @examples godmode.on()
godmode.on <- function(pv = FALSE) {
  if ("testthat" %in% rownames(installed.packages())) {
    options(save_testthat = list(
      praise = testthat:::praise,
      encourage = testthat:::encourage
    ))
    if (isNamespaceLoaded("praise"))
      options(save_testthat = c(
        getOption("save_testthat"),
        list(p.praise = praise:::praise)
      ))
  }
  if (pv) {
    assignAnywhere("praise", praise_pv)
    assignAnywhere("encourage", encourage_pv)
  } else {
    assignAnywhere("praise", praise_gm)
    assignAnywhere("encourage", encourage_gm)
  }
  invisible()
}
