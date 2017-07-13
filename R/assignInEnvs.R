#' @importFrom utils tail
assignInEnvs <- function(envs, string, value) {
  for (i in seq(along = envs)) {
    if (is.function(value)) {
      # Derive (potential) package name from environment name
      pkgName <- tail(unlist(strsplit(names(envs)[i], split = ":")), n = 1)
      # Check whether there is a corresponding package namespace environment
      idx <- which(names(envs) == pkgName)
      if (length(idx) > 0) {
        # We found a package namespace environment;
        # we set the function's environment to that namespace environment
        # under the assumption that the 'new' function needs to have
        # access to appropriate symbols from that namespace
        environment(value) <- envs[[idx]]
      } else {
        environment(value) <- parent.env(envs[[i]])
        #environment(value) <- .BaseNamespaceEnv
      }
    }
    doAssign(string, value, envir = envs[[i]])
  }
  invisible()
}
