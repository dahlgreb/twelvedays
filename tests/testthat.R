library(testthat)
library(twelvedays)

test_that("pluralization works correctly", {
  single <- c("duck", "doose", "ducky", "deck")
  plural <- c("ducks", "deese", "duckies", "decks")

  expect_equal( pluralize_gift(single), plural )

})

test_that("days are sung properly", {
  num <- c(1,4,7)
  phrases <- c("Day One", "Day Two", "Day Three")
  data <- data.frame(day,phrases)

  actual <- sing_day(data, 2, phrases)
  expected <- "On the second day of Christmas, my true love sent to me,\nDay Two\nDay One"

  expect_equal( actual, expected )

})

test_that("phrases are phrased properly", {

  actual <- make_phrase(num = 10,
              num_word = "ten",
              item = "lords",
              verb = "a-leaping",
              adjective = "",
              location = "")
  expected <- "ten lords a-leaping"

  expect_equal( actual, expected )

})


test_check("twelvedays")
