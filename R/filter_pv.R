filter_pos <- function(x) x[x$score >= 0, ]

filter_neg <- function(x) x[x$score <= 0, ]

get_score <- function(x) godmode::proverbs$score[godmode::proverbs$proverb == x]
