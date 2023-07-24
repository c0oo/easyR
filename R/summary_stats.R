#' Compute summary statistics for a numeric vector.
#'
#' This function calculates the mean, median, standard deviation, minimum, and maximum
#' of a numeric vector.
#'
#' @param x A numeric vector.
#' @return A data frame containing summary statistics.
#'
#' @examples
#' data <- c(1, 2, 3, 4, 5)
#' summary_stats(data)
#'
#' @export

summary_stats <- function(x) {
  stats_df <- data.frame(
    Mean = mean(x),
    Median = median(x),
    SD = sd(x),
    Min = min(x),
    Max = max(x)
  )
  return(stats_df)
}
