#' An rnbapackage function
#'
#' This function allows you to get the correlation matrix of continuous variables from a given season.
#' @param year The season from which you want the correlation matrix.
#' @keywords continuous correlation matrix
#' @export
#' @examples
#' continuous_correlation()
continuous_correlation <- function(year) {
  nba_year <- dplyr::filter(nba_stats, Year == year)
  nba_year_cont <- nba_year[,sapply(nba_year,is.numeric)]
  return(cor(nba_year_cont))
}
