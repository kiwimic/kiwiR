% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renderRMDreport.R
\name{renderRMDreport}
\alias{renderRMDreport}
\title{Generowanie raportów markdown, na podstawie danych, paramu, pliku z raportem i ściezki do zapisania}
\usage{
renderRMDreport(rmd_file, output_file, output_folder, params = NULL,
  type = "html", ...)
}
\arguments{
\item{...}{dodatkowe parametry}

\item{paths}{wektor sciezek do plikow}

\item{FUN}{niestandardowa funkcja np. readxl::read_excel, czy read.csv}
}
\value{
zwraca listę z wczytanymi plikami.
}
\description{
Generowanie raportów markdown, na podstawie danych, paramu, pliku z raportem i ściezki do zapisania
}
