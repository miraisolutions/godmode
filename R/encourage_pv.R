encourage_pv <- function() {
  x <- godmode::proverbs
  x <- x[x$score <= 0, ]
  godmode:::randomize(x$proverb, prob = pmax(abs(x$score), 10L))
}
