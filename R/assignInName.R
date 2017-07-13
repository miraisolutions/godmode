assignInName <- function(name, string, value) {
  stopifnot(length(name) == 1)
  envs <- findAnywhere(string)
  envs <- envs[grepl(pattern = name, x = names(envs))]
  assignInEnvs(envs, string, value)
  invisible(envs)
}
