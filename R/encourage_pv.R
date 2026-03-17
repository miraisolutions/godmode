encourage_pv <- function() {
  x <- godmode::proverbs
  x <- godmode:::filter_neg(x)
  godmode:::randomize(x$proverb, prob = pmax(abs(x$score), 10L))
}
