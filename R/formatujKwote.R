
#' Służy do formatowania kwot przy prezentacji na np. wykresach i danych zawsze zwraca character
#'
#' @param x vector numeryczny (numeric vector)
#' @param miejscaPoPrzecinku ilość miejsc po przecinku, które mają być prezentowane domyślnie 1 (jedno)
#' @param prefix co ma być przed kwotą np. znak '$' domyślnie nic ''
#' @param suffix co ma być po kwocie np. znak '$' domyślnie nic 'zł'
#'
#' @return zwraca characet vector dla kwot
#'
#' @export
#'
#'
formatujKwote <- Vectorize(function(x, miesjcaPoPrzecinku = 1, prefix = "", suffix = "zł") {
  if (!is.numeric(x)) {
    stop(sprintf(
      "x is non-numeric but class: %s",
      class(x))
      )
  }

  if(abs(x) < 1000) {
    return(paste0(prefix, x, suffix))
  } else if (abs(x) < 1000 * 1000) {
    return(paste0(prefix, round(x/1000, 1),"tys ", suffix))
  } else {
    return(paste0(prefix, round(x/(1000*1000), 1),"mln ", suffix))
  }
}, vectorize.args = "x")


