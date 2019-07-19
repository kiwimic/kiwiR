#' plotColors
#'
#' plotColors to funkcja, która obrazuje kolory w palecie, która jest dostarczona
#'
#' @param pallete_var character vector z paletami
#'
#' @return zwraca object klasy gg, ggplot
#'
#' @export
#'
#'

plotColors <- function(palette_var) {
  stopifnot(is.character(palette_var))
  N <- length(palette_var)
  tib <- data.frame(V1 = rep(1, N), Colours = palette_var, stringsAsFactors = F)

  gg <- ggplot2::ggplot(tib, aes(x = Colours, y = V1, fill = Colours)) +
    ggplot2::geom_col(colour = "black") +
    ggplot2::scale_fill_manual(values = palette_var) +
    ggplot2::theme_void() +
    ggplot2::theme(legend.position = "top")

  return(gg)
}
