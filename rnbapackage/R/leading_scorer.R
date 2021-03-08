#' A rnbapackage function
#'
#' This function allows you to get the leading scorer by total points from a given season.
#' @param year The season from which you want the leading scorer.
#' @keywords leading scorer
#' @export
#' @examples
#' leading_scorer()
leading_scorer <- function(year) {
  nba_year <- nba_stats %>% dplyr::filter(Year == year)
  return(nba_year %>% dplyr::filter(PTS == max(nba_year$PTS)))
}
