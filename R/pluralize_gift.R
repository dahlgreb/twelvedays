#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){
  gift <- as.character(gift)
  ys <- str_detect(gift, "y$")
  gift[ys] <- gift[ys] %>%
    str_replace("y$", "ies")
  oose <- str_detect(gift, "oose$")
  gift[oose] <- gift[oose] %>%
    str_replace("oose$", "eese")
  gift[!oose & !ys] <- paste(gift[!oose & !ys], 's',sep='')
  return(gift)

}
