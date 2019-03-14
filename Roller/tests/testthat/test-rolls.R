context("Rolls tests")

test_that("Rolls works as expected", {
  # roll fair die 50 times
  fair_die <- device()
  set.seed(123)
  fair50 <- roll(fair_die, times = 50)
  # roll 50 times
  fair_die1 <- device(sides = 1:6, prob = rep(1/6, 6))
  set.seed(123)
  fair_50rolls <- roll(fair_die1, times = 50)
  # roll string die 20 times
  str_die <- device(
    sides = c('a', 'b', 'c', 'd', 'e', 'f'),
    prob = c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
  set.seed(123)
  str_rolls <- roll(str_die, times = 20)
  expect_equal(fair50$rolls, c(2, 1, 2, 1, 1, 2,
                               1, 1, 1, 2, 1, 2, 1,
                               1, 2, 1, 2, 2, 2, 1,
                               1, 1, 1, 1, 1, 1, 1,
                               1, 2, 2, 1, 1, 1, 1,
                               2, 2, 1, 2, 2, 2, 2,
                               2, 2, 2, 2, 2, 2, 2,
                               2, 1))
  expect_equal(class(fair50), "rolls")
  expect_true(is.rolls(fair50))
  expect_equal(names(fair50),
               c("rolls", "sides", "prob",  "total"))
  expect_equal(fair50$sides, c(1, 2))
  expect_equal(fair50$prob, c(0.5, 0.5))
  expect_equal(fair50$total, 50)

  expect_equal(fair_50rolls$rolls, c(3, 6, 4, 1, 1, 2, 5, 1,
                                     5, 4, 1, 4, 6, 5, 2, 1,
                                     3, 2, 3, 1, 1, 6, 5, 1,
                                     5, 6, 5, 5, 3, 2, 1, 1,
                                     6, 6, 2, 4, 6, 3, 3, 3,
                                     2, 4, 4, 4, 2, 2, 3, 4,
                                     3, 1))
  expect_equal(class(fair_50rolls), "rolls")
  expect_true(is.rolls(fair_50rolls))
  expect_equal(fair_50rolls$sides, c(1, 2, 3, 4, 5, 6))
  expect_equal(fair_50rolls$prob, c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))
  expect_equal(fair_50rolls$total, 50)
  expect_equal(names(fair_50rolls),
               c("rolls", "sides", "prob",  "total"))

  expect_equal(str_rolls$rolls, c("f", "c", "e", "b", "a", "f",
                                  "e", "b", "d", "e", "a", "e",
                                  "d", "d", "f", "b", "f", "f",
                                  "f", "a"))
  expect_equal(class(str_rolls), "rolls")
  expect_true(is.rolls(str_rolls))
  expect_equal(str_rolls$sides, c('a', 'b', 'c', 'd', 'e', 'f'))
  expect_equal(str_rolls$prob, c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
  expect_equal(str_rolls$total, 20)
  expect_equal(names(str_rolls), c("rolls", "sides", "prob", "total"))
  })
