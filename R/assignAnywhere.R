assignAnywhere <- function(string, value) {
  envs <- findAnywhere(string)
  assignInEnvs(envs, string, value)
  invisible(envs)
}
