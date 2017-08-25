#' Stochastic mini-model
#'
#' @description Example function to illustrate godmode usage in testing.
#'
#' @param simSeed `integer` seed. Used to allow simulation of identical results.
#'
#' @return Maximum value contribution statistics for a set of randomly produced variates.
#' @importFrom stats rnorm setNames
#' @export
#'
#' @md
#'
#' @examples ret <- stochModel()
stochModel <- function(simSeed = 123) {
  set.seed(simSeed)
  RawData <- rnorm(1000)
  dim(RawData) <- c(100, 10)
  Tot <- rowSums(RawData)
  idx <- which.max(Tot)
  message("idx is ", idx)
  Contr <- RawData[idx, ] / Tot[idx]
  setNames(Contr, paste0("Var", 1:10))
}
