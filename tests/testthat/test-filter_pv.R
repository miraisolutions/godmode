test_that("filter_pos returns only rows with score >= 0", {
  x <- godmode::proverbs
  result <- godmode:::filter_pos(x)
  expect_true(all(result$score >= 0))
})

test_that("filter_neg returns only rows with score <= 0", {
  x <- godmode::proverbs
  result <- godmode:::filter_neg(x)
  expect_true(all(result$score <= 0))
})

test_that("get_score returns the score for a known proverb", {
  pv <- godmode::proverbs$proverb[1]
  expect_equal(godmode:::get_score(pv), godmode::proverbs$score[1])
})

test_that("get_score errors when proverb is not found", {
  expect_error(godmode:::get_score("nonexistent proverb"), "Proverb not found")
})
