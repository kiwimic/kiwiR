#' Convert epoch to YMD HMS date format
#'
#' @param x vector numeryczny (numeric vector)
#'
#' @return zwraca vector po usunieciu wszystkich polskich znakow (zamienieniu ich na odpowiednik a z sladczkiem -> a)
#'
#' @export
#'
#'
epochToYMDHMS <- function(x) {

  stopifnot(is.numeric(x))

  temp <- lubridate::ymd_hms("1970-01-01 00:00:01")

  return(temp + x)
}


