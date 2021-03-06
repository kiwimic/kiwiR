test_that("Usuwanie polskich znakow", {
  expect_equal(kiwiR::usuwaniePolskichZnakow("Usuwanie polskich znaków"), "Usuwanie polskich znakow")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Ąą"), "Aa")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Ćć"), "Cc")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Ęę"), "Ee")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Łł"), "Ll")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Śś"), "Ss")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Ńń"), "Nn")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Óó"), "Oo")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Źź"), "Zz")
  expect_equal(kiwiR::usuwaniePolskichZnakow("Żż"), "Zz")
  expect_equal(kiwiR::usuwaniePolskichZnakow(c("Źćó", "Ąęć")), c("Zco", "Aec"))
})
