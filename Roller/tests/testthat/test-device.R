context("Device tests")

test_that("Device works as expected", {
  fair_coin <- device()
  weird_die <- device(
    sides = c('i', 'ii', 'iii', 'iv'),
    prob = rep(1/4, 4))
  fair_die <- device(sides = 1:6, prob = rep(1/6, 6))
  loaded_die <- device( sides = 1:6,
                        prob = c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
  d = device(sides=c(1,2,3,4), prob = c(0.2, 0.8, 0, 0))
  expect_equal(device()$sides, c(1, 2))
  expect_equal(device()$prob, c(0.5, 0.5))
  expect_length(device()$sides, 2)
  expect_length(device()$prob, 2)
  expect_equal(fair_die$sides, 1:6)
  expect_equal(fair_die$prob, rep(1/6, 6))
  expect_length(fair_die$sides, 6)
  expect_length(fair_die$prob, 6)
  expect_length(fair_coin$sides, 2)
  expect_equal(loaded_die$sides, 1:6)
  expect_equal(loaded_die$prob, c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
  expect_length(loaded_die$sides, 6)
  expect_length(loaded_die$prob, 6)
  expect_equal(class(fair_coin), "device")
  expect_error(device(sides = c('a'), prob = c(1)))
  expect_error(device(sides = c('heads', 'heads'), prob = c(0.5, 0.5)))
  expect_error(device(
    sides = c('a', 'b'),
    prob = c(0.2, 0.1)))
  expect_error(device(
    sides = c('a', 'b', 'c'),
    prob = c(0.2, 0.8)))
  expect_error(device(
    sides = c('a', 'b', 'c'),
    prob = c(0.2, 0.8)))
  expect_error(device(
    sides = c('a', 'b'),
    prob = c(0.2, 0.1)))
  expect_error(device(sides = c('heads', 'heads')))
  expect_error(device(sides = c('a'), prob = c(1)))
  expect_equal(d$sides, c(1,2,3,4))
  expect_equal(d$prob, c(0.2, 0.8, 0, 0))
  expect_length(d$sides, 4)
  expect_length(d$prob, 4)
})


context("is.device tests")

test_that("is.device works as expected", {
  fair_coin <- device()
  weird_die <- device(
    sides = c('i', 'ii', 'iii', 'iv'),
    prob = rep(1/4, 4))
  fair_die <- device(sides = 1:6, prob = rep(1/6, 6))
  loaded_die <- device( sides = 1:6,
                        prob = c(0.075, 0.1, 0.125, 0.15, 0.20, 0.35))
  d = device(sides=c(1,2,3,4), prob = c(0.2, 0.8, 0, 0))
  d = device(sides=c(1,2,3,4), prob = c(0.2, 0.8, 0, 0))
  expect_true(is.device(d))
  expect_true(is.device(fair_coin))
  expect_true(is.device(weird_die))
  expect_true(is.device(fair_coin))
  expect_true(is.device(loaded_die))

})

