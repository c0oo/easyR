#' Create a scatter plot with a linear regression line.
#'
#' This function generates a scatter plot between two numeric variables and fits
#' a linear regression line to the data.
#'
#' @param data A data frame containing the variables to be plotted.
#' @param x_var The name of the variable for the x-axis.
#' @param y_var The name of the variable for the y-axis.
#'
#' @return A ggplot object with the scatter plot and the linear regression line.
#'
#' @examples
#' my_data <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 5, 4, 6))
#' plot_linear_regression(my_data, "x", "y")
#'
#' @export

plot_linear_regression <- function(data, x_var, y_var) {
  require(ggplot2)

  ggplot(data, aes_string(x = x_var, y = y_var)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE) +
    labs(x = x_var, y = y_var) +
    ggtitle(paste("Scatter Plot with Linear Regression of", x_var, "vs", y_var))
}
