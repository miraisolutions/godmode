filter_pos <- function(x) x[x$score >= 0, ]

filter_neg <- function(x) x[x$score <= 0, ]

get_score <- function(x) {
  idx <- match(x, godmode::proverbs$proverb)
  if (is.na(idx)) stop(sprintf("Proverb not found: %s", x))
  godmode::proverbs$score[[idx]]
}
