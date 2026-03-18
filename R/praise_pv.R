praise_pv <- function() {
  x <- godmode::proverbs
  x <- godmode:::filter_pos(x)
  godmode:::randomize(x$proverb, prob = pmax(x$score, 10L))
}
