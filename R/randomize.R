randomize <- function(x, prob = NULL) {
  # randomize
  set.seed(seed = NULL)
  sample(x, 1, prob = prob)
}

randomise <- randomize
