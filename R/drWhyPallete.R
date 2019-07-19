#' drWhyPallete
#'
#'drWhyPallete to paleta kolorow wykorzystana w https://github.com/ModelOriented/DrWhy
#'W przypadku gdy uzytkownik wybierze wiecej niż N > 9, dodawane sa z kolory z rainbow pallete.
#'
#' @param x int od 1 do n (9)
#'
#' @return zwraca werktor kolorów z pallety drWhy
#'
#' @export
#'
#'
drWhyPallete <- function(N) {

  stopifnot(integer(N)<0, !is.numeric(N))

  c("#8bdcbe", "#f05a71", "#371ea3" ,"#46bac2", "#ae2c87", "#ffa58c", "#4378bf", "#160e3b", "#f0f0f4") -> pal

  if (integer(N) > 9) {
    warning(glue::glue("{N} > 9, so addiction colors, will be added from rainbow pallete", N = N))

    gg_color_hue <- function(n) {
      hues = seq(15, 375, length = n + 1)
      hcl(h = hues, l = 65, c = 100)[1:n]
    }

    subPallete <- c(pal[c(9,1,2,3,4,5,6,7,8)],gg_color_hue(integer(N)-9))
  } else {
    subPallete <- switch(integer(N),
                         {pal[4]},#1
                         {pal[c(1,7)]},#2
                         {pal[c(1,4,7)]},#3
                         {pal[c(4,3,1,7)]},#4
                         {pal[c(1,2,3,4,6)]},#5
                         {pal[c(1,2,3,4,5,6)]},#6
                         {pal[c(1,2,3,4,5,6,7)]},#7
                         {pal[c(1,2,3,4,5,6,7,8)]},#8
                         {pal[c(9,1,2,3,4,5,6,7,8)]}#9
    )
  }

  return(subPallete)
}

