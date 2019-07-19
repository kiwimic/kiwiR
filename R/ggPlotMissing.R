#' ggPlotMissings
#'
#' Funkcja pomocnicza to pokazywania ile jest brakow danych w poszczegolnych kolumnach
#'
#' @param data object class c("tbl_df", "tbl","data.frame")
#' @param title tytul wykresu
#' @param ggtheme funkcja theme z pakietu ggplot2
#'
#' @return zwraca wykres pokazujacy % ilosci NA w danych
#'
#' @export
#'
#'

ggPlotMissings <- function(data, title = NULL, ggtheme = ggplot2::theme_classic()) {

  stopifnot(any(class(data) %in% c("tbl_df", "tbl","data.frame")))

  missing_value <- tibble::tibble(
    var = names(data),
    num_missing = sapply(data, function(x) {sum(is.na(x))}),
    percent_missing = num_missing/nrow(data)
  )

  gg <- ggplot(data = missing_value, aes(x = reorder(var, percent_missing), y = percent_missing, fill = percent_missing)) +
    geom_col(color = "black") +
    scale_fill_gradient(high = "#132B43", low = "#56B1F7") +
    scale_y_continuous(labels = scales::percent, limits = c(0, 1)) +
    coord_flip() +
    ggtheme +
    labs(x = "Percent of missing observations",
         y = "Features",
         title = title) +
    theme(legend.position = "bottom") +
    geom_text(
      aes(label =kiwiR::formatujKwote(num_missing, suffix = ""), y = 0.95),
      position = position_dodge(0.9),
      vjust = 0
    )

  return(gg)
}
