#' Takes a noun and makes it plural
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export



make_phrase <- function(num, num_word, item, verb, adjective, location){

  verb=as.character(verb)
  location=as.character(location)
  adjective=as.character(adjective)
  item=as.character(item)

  verb <- str_replace_na(verb, "")
  adjective <- str_replace_na(adjective, "")
  location <- str_replace_na(location, "")

  if(str_length(location)>0){
    return(glue("{num_word} {item} {location}"))
  }
  if(str_length(adjective)>0){
    return(glue("{num_word} {adjective} {item}"))
  }
  return(glue("{num_word} {item} {verb}"))

}

