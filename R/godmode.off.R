#' Disable god-mode
#'
#' @description Disables god-mode by attempting to re-assign the original versions of praise and encourage.
#'
#' @return Invisibly returns `NULL`.
#' @export
#'
#' @md
#'
#' @examples godmode.off()
godmode.off <- function() {
  if (length(grep("^save_", names(options()))) > 0) {
    tmp <- getOption("save_testthat")
    if (is.null(tmp)) {
      message("save_testthat option not available")
    } else {
      assignInName("testthat", "praise", tmp$praise)
      assignInName("testthat", "encourage", tmp$encourage)
      assignInName("praise", "praise", tmp$p.praise)
    }
  }
  invisible()
}
