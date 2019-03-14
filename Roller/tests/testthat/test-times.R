context("Times tests")

test_that("Device works as expected", {
  expect_error(check_times(2.4))
  expect_error(check_times(-5))
  expect_error(check_times("2.4"))
  expect_error(check_times("a"))
  expect_error(check_times(0))
  expect_true(check_times(3))
  expect_true(check_times(100001))
  expect_length(check_times(3), 1)

})
