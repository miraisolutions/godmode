#' Changes a binding in a specific environment
#' @title Changing a binding in a specific environment
#' @param x Variable name given as a \code{character} string
#' @param value Value to be assigned to \code{x}
#' @param envir Environment in which the binding should be changed
#' @return \code{invisible(NULL)}
#' @details First unlocks the binding and then performs the assignment
#' in the specified environment
doAssign <- function(x, value, envir) {
  stopifnot(length(x) == 1)
  unlockBinding(x, envir)
  assign(x, value, envir = envir)
  # we don't care about re-locking bindings in god-mode
  invisible()
}

assignVal <- function(envs, string, value) {
  for (i in seq(along = envs)) {
    doAssign(string, value, envir = envs[[i]])
  }
}

assignFunc <- function(envs, string, value) {
  for (i in seq(along = envs)) {
    environment(value) <- environment(get(string, envir = envs[[i]]))
    doAssign(string, value, envir = envs[[i]])
  }
}
