#' Searches bindings in "any" environment
#' @title Search Bindings in any Environment
#' @param x Variable name given as a \code{character} string
#' @return \code{list} of \code{environment}s where a binding
#' with the specified name has been located
#' @details Searches along the search list and loaded namespaces.
#' "Along" refers to the fact that enclosing environments are searched
#' as well. I.e. for a package environment also the package's namespace
#' environment and a potentially available imports environment are searched
#' as well.
#' @importFrom utils find
findAnywhere <- function(x) {
  stopifnot(length(x) == 1)

  # Find along enclosing environments
  .findEnv <- function(env) {
    where <- list()
    while (!identical(env, emptyenv())) {
      if (exists(x, env, inherits = FALSE)) {
        where <- c(where, env)
      }
      env <- parent.env(env)
    }
    where
  }

  # Find in loaded namespaces
  whereNs <- unlist(lapply(loadedNamespaces(), function(name) {
    .findEnv(asNamespace(name))
  }))

  # Find in search list
  where <- lapply(find(x), as.environment)

  envs <- unique(c(whereNs, where))

  # Get environment names and assign
  envNames <- sapply(envs, function(env) {
    envName <- attr(env, "name")
    if (is.null(envName))
      envName <- environmentName(env)
    envName
  })
  names(envs) = envNames
  envs
}
