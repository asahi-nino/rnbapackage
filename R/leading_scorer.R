#' An rnbapackage function
#'
#' This function allows you to get the leading scorer by total points from a given season.
#' @param year The season from which you want the leading scorer.
#' @keywords leading scorer
#' @export
#' @examples
#' leading_scorer()
leading_scorer <- function(year) {
  nba_year <- dplyr::filter(nba_stats, Year == year)
  return(dplyr::filter(nba_year, PTS == max(nba_year$PTS)))
}
