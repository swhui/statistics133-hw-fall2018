context("Check Sides")

test_that("Sides are valid", {
  expect_true(check_sides(c("h", "t", "x")))
  expect_length(check_sides(c("g", "f")), 1)
  expect_true(check_sides(c("apple", "banana", "orange")))
  expect_true(check_sides(c(1, 2, 3)))
  expect_error(check_sides("orange"))
  expect_error(check_sides(c(TRUE, FALSE)))
  expect_error(check_sides(c("h", "h", "x")))
})
