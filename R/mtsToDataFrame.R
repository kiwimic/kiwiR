
#' Konwersja ts lub mts do data.frame
#'
#' @param x mts, or ts object
#' @return data.frame of converted ts, mts object
#'
#' @export
#'
#'
mtsToDataFrame <- function(x) {

  if (sum(class(x) %in% c("mts", "ts"))==0) {
    stop(sprintf(
      "Please pass start as POSIXct or POSIXt instead of class: %s",
      class(x))
    )
  }

  return(data.frame(Year = c(floor(time(x) + .01)), Period = c(cycle(x)), x))

}
