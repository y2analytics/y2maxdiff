#' Individual-level models
#'
#' Runs an individual-level multinomial logit model for each respondent
#' @param exercise_row NO DEFAULT.
#' @examples
#' # No examples. Good luck
#' @importFrom rlang .data
#' @export

run_respondents_logits <- function(
    exercise_row
) {
  item_values(exercise_row)
}


# private functions -------------------------------------------------------


item_values <- function(
    exercise_row
    ) {
  exercise_row %>%
    dplyr::select(
      -'record',
      -'set'
      ) %>%
    tidyr::pivot_longer(
      cols = tidyr::everything(),
      names_to = "item"
      ) %>%
    dplyr::filter(!is.na(.data$value))
}
