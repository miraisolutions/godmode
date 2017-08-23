assignInEnvs <- function(envs, string, value) {
  if (is.function(value)) {
    assignFunc(envs, string, value)
  } else {
    assignVal(envs, string, value)
  }
  invisible()
}
