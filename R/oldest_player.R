#' An rnbapackage function
#'
#' This function allows you to get the oldest player from a given season.
#' @param year the year of which would you like to know the oldest player
#' @keywords oldest player
#' @export
#' @examples
#' oldest_player()
oldest_player <- function(year) {
  nba_year <- nba_stats %>% filter(Year == year)
  return(nba_year %>%
           filter(Age == max(nba_year$Age)) %>%
           top_n(1))
}
