test_that("praise_pv returns a single string", {
  result <- godmode:::praise_pv()
  expect_length(result, 1)
  expect_type(result, "character")
})

test_that("praise_pv returns a proverb with score >= 0", {
  result <- godmode:::praise_pv()
  expect_gte(godmode:::get_score(result), 0)
})

test_that("encourage_pv returns a single string", {
  result <- godmode:::encourage_pv()
  expect_length(result, 1)
  expect_type(result, "character")
})

test_that("encourage_pv returns a proverb with score <= 0", {
  result <- godmode:::encourage_pv()
  expect_lte(godmode:::get_score(result), 0)
})
