context("pluralization")

test_that("pluralization works correctly", {
  single <- c("duck", "doose", "ducky", "deck")
  plural <- c("ducks", "deese", "duckies", "decks")

  expect_equal( pluralize_gift(single), plural )

})

