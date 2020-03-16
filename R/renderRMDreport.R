
#' Generowanie raportów markdown, na podstawie danych, paramu, pliku z raportem i ściezki do zapisania
#'
#' @param paths wektor sciezek do plikow
#' @param FUN niestandardowa funkcja np. readxl::read_excel, czy read.csv
#' @param ... dodatkowe parametry
#'
#'
#' @return zwraca listę z wczytanymi plikami.
#'
#' @export
#'
#'
renderRMDreport <- function(rmd_file, output_file, output_folder, params = NULL, type = "html", ...) {

  checkIfoutput_fileHasFileExtensionPATTERN <- glue::glue(".{ext}$", ext = type)

  if (!grepl(output_file, pattern = checkIfoutput_fileHasFileExtensionPATTERN)) {
    output_file <- paste0(output_file, ".", type)
  }

  rmarkdown::render(input = rmd_file,
                    output_file = file.path(dirname(rmd_file), output_file),
                    output_format = paste0(type, "_document"),
                    output_dir = paste0(getwd(), "/", output_folder),
                    params = params,
                    encoding = "utf-8",
                    envir = new.env(parent = globalenv()),
                    ...)

}



