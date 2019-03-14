context("Check Prob")

test_that("Prob values are valid", {
  expect_error(check_prob(c(-0.5, 0.5)))
  expect_error(check_prob(c(1.5, 0.5)))
  expect_error(check_prob(c(0.5, 0.7)))
  expect_error(check_prob(1))
  expect_error(check_prob(c(NA, 1)))
  expect_error(check_prob(c(2.4, 1)))
  expect_true(check_prob(c(0, 0.5, 0.5)))
  expect_true(check_prob(c(0.2, 0.3, 0.5)))
  expect_true(check_prob(c(.8, .05, .1, .05)))
  expect_length(check_prob(c(.5, .5)), 1)
})
