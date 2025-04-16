#' Plot Diabetes Counts by Category
#'
#' This function creates a bar plot of diabetes categories using ggplot2.
#'
#' @param dat A data frame containing a column `Diabetes_012`.
#' @return A ggplot object showing the count of each diabetes category.
#' @import ggplot2
#' @export
#'
#' @examples
#' # Assuming your dataset has a column Diabetes_012
#' plot_diabetes_bar(data.frame(Diabetes_012 = sample(0:2, 100, replace = TRUE)))
plot_diabetes_bar <- function(dat) {
  p <- ggplot2::ggplot(dat, aes(x = Diabetes_012, color = Diabetes_012)) +
    geom_bar(stat = "count", width = 0.7, fill = "white") +
    geom_text(stat = "count", aes(label = ..count..),
              vjust = 1.6, color = "black",
              position = position_dodge(0.9), size = 3.5) +
    theme_minimal()

  return(p)
}

