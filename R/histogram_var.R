#' Create a histogram to visualize the distribution of a numeric variable.
#'
#' This function generates a histogram to visualize the distribution of a numeric variable
#' from a data frame.
#'
#' @param data A data frame containing the variable to be plotted.
#' @param var_name The name of the variable to be visualized.
#'
#' @return A ggplot object with the histogram.
#'
#' @examples
#' my_data <- data.frame(values = c(1, 2, 3, 4, 5))
#' histogram_var(my_data, "values")
#'
#' @export

histogram_var <- function(data, var_name) {
  require(ggplot2)

  ggplot(data, aes_string(x = var_name)) +
    geom_histogram() +
    labs(x = var_name) +
    ggtitle(paste("Histogram of", var_name))
}
