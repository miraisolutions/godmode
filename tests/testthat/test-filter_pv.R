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
