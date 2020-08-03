context("sing_day")

test_that("days are sung properly", {
  num <- c(1,4,7)
  phrases <- c("Day One", "Day Two", "Day Three")
  data <- data.frame(day,phrases)

  actual <- sing_day(data, 2, phrases)
  print(actual)
  expected <- "On the second day of Christmas, my true love sent to me,\nDay Two\nDay One"

  expect_equal( actual, expected )

})
