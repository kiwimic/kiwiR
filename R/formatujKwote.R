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
formatujKwote <- Vectorize(function(x, miejscaPoPrzecinku = 1, prefix = "", suffix = "zł") {
  if (!is.numeric(x)) {
    stop(sprintf(
      "x is non-numeric but class: %s",
      class(x))
      )
  }

  if(abs(x) < 1000) {
    return(paste0(prefix, round(x, miejscaPoPrzecinku), suffix))
  } else if (abs(x) < 1000 * 1000) {
    return(paste0(prefix, round(x/1000, miejscaPoPrzecinku),"tys ", suffix))
  } else {
    return(paste0(prefix, round(x/(1000*1000), miejscaPoPrzecinku),"mln ", suffix))
  }
}, vectorize.args = "x", USE.NAMES = F)


