suppressMessages({
  library(assertthat)
})

context("stochModel")

# god-mode
#godmode.on(pv = FALSE)
godmode.on(pv = TRUE)

if (FALSE) {
  # Execute the command below to run the tests
  devtools::test(pkg = ".", filter = "stochModel", reporter = "summary")
}

test_that("Output is as expected", {
  exp123 <- c(
    Var1 = 0.05639623,
    Var2 = 0.19102945,
    Var3 = 0.25857084,
    Var4 = 0.13456339,
    Var5 = -0.02519421,
    Var6 = 0.08005507,
    Var7 = -0.08972622,
    Var8 = 0.22991939,
    Var9 = 0.13942507,
    Var10 = 0.02496098
  )

  # get messages through during testing
  # godmode:::assignAnywhere("message", function(...) {
  #   if (!is.list(list(...)[[1]]))
  #     cat(..., "\n", sep = "")
  # })

  # force p = 1 for encourage
  set.seed(12)
  # force p = 1 for encourage after seed modifications within function calls
  setOnExit <<- function() {
    set.seed(12)
  }
  trace("stochModel", exit = setOnExit)

  # function / code crashing example:
  # res4 <- xx

  # function calls:
  res1 <- godmode::stochModel(123)
  res2 <- godmode::stochModel(123)
  res3 <- godmode::stochModel(124)
  # function / code crashing example:
  # res4 <- xx

  # force p = 1 for praise (not strictly necessary given the exit-tracer)
  set.seed(12)

  # actual tests for results of function call
  expect_true(assert_that(!identical(res1, res3)))
  expect_equal(res1, res2)
  expect_equal(res1, exp123, tolerance = 0.00000001, scale = 1, info = "rounded")
  # test expectation failing example:
  # expect_equal(res1, res3)
  # note below expectation only holds true as long as messaging isn't re-routed to cat!
  expect_message(godmode::stochModel(123), "idx is 31")

})

godmode.off()
