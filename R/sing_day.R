#' sings the lines for the given day
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})

  days <- c('first', 'second', 'third', 'fourth', 'fifth', 'sixth',
            'seventh', 'eigth', 'ninth', 'tenth', 'eleventh', 'twelfth')
  out <- glue("On the {days[line]} day of Christmas, my true love sent to me,")
  if(line==1){
    gifts <- str_replace(phrases,"^and a","a")[[1]]
  }
  else{
    gifts <- map_chr(phrases[line:1], ~glue(.x))
  }
  return(paste(out, glue_collapse(gifts, sep = "\n"), sep="\n"))
}
