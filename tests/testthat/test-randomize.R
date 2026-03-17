test_that("randomize returns a single element", {
  x <- c("a", "b", "c")
  result <- godmode:::randomize(x)
  expect_length(result, 1)
})

test_that("randomize returns an element from the input vector", {
  x <- c("a", "b", "c")
  result <- godmode:::randomize(x)
  expect_true(result %in% x)
})

test_that("randomize respects prob argument", {
  x <- letters[1:10]
  prob <- c(991, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  samples <- replicate(9, godmode:::randomize(x, prob = prob))
  expect_gt(sum(samples == x[1]), 5)
})
