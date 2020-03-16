#' Słuzy do formatowania kwot przy prezentacji na np. wykresach i danych zawsze zwraca character
#'
#' @param x vector numeryczny (numeric vector)
#' @param miejscaPoPrzecinku ilosc miejsc po przecinku, ktore maja byc prezentowane domyclnie 1 (jedno)
#' @param prefix co ma byc przed kwota np. znak '$' domyslnie nic ''
#' @param suffix co ma byc po kwocie np. znak '$' domyslnie nic 'zł'
#'
#' @return zwraca characet vector dla kwot
#'
#' @export
#'
#'
#'
#'

measureTime <- function(start = Sys.time(), end = NULL) {
  if (sum(class(start) %in% c("POSIXct", "POSIXt"))==0) {
    stop(sprintf(
      "Please pass start as POSIXct or POSIXt instead of class: %s",
      class(start))
      )
  }

  Now <- Sys.time()

  if (!is.null(end)) {
    if (sum(class(end) %in% c("POSIXct", "POSIXt"))==0) {
      stop(sprintf(
        "Please pass end as POSIXct or POSIXt instead of class: %s",
        class(end))
      )
    }

    Now <- end
  }

  passedSecond <- round(as.numeric(Now) - as.numeric(start))

  if (passedSecond < 60) { ##  < 1 minute
    glue::glue("{secs} seconds", secs = passedSecond)
  } else if (passedSecond < 60 * 60) { ## < 1 hour
    mins <- floor(passedSecond/60)
    secs <- passedSecond %% 60
    glue::glue("{mins} minutes and {secs} seconds", mins = mins, secs = secs)
  } else {
    hours <- floor(passedSecond/3600)
    mins <- passedSecond - hours * 3600
    mins <- floor(mins/60)
    secs <- passedSecond %% 60
    glue::glue("{hours} hours, {mins} minutes and {secs} seconds", hours = hours,  mins = mins, secs = secs)
  }
}

