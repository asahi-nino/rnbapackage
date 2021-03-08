#' An rnbapackage function
#'
#' This function allows you to get the oldest player from a given season.
#' @param year the year of which would you like to know the oldest player
#' @keywords oldest player
#' @export
#' @examples
#' oldest_player()
oldest_player <- function(year) {
  nba_year <- filter(nba_stats, Year == year)
  nba_year_oldest <- filter(nba_year, Age == max(nba_year$Age))
  return(top_n(nba_year_oldest,1))
}
