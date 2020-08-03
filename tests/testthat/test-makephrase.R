context("make_phrase")

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
