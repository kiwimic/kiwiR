context("")
library("kiwiR")

test_that("str_length is number of characters", {
  expect_equal(kiwiR::epochToYMDHMS(21414214), lubridate::ymd_hms("1970-09-05 20:23:35 UTC"))
  expect_equal(kiwiR::epochToYMDHMS(0), lubridate::ymd_hms("1970-01-01 00:00:01 UTC"))
})
