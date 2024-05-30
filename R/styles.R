#' Font family for the chart elements
#'
#' This specifies the font family to be used for the chart elements such as titles, axes labels, and legends.
#'
#' @export
font_family <- "Roboto"

#' Background color for the chart
#'
#' This specifies the background color of the chart area.
#'
#' @export
bgColor <- "white"

#' Font color for text elements
#'
#' This specifies the color of the text elements such as titles, axes labels, and legends.
#'
#' @export
color_font <- "#333"

#' Font size for titles
#'
#' This specifies the font size of the chart titles.
#'
#' @export
title_font_size <- "22px"

#' Font size for y-axis labels
#'
#' This specifies the font size of the y-axis labels.
#'
#' @export
y_axis_font_size <- "15px"

#' Font size for x-axis labels
#'
#' This specifies the font size of the x-axis labels.
#'
#' @export
x_axis_font_size <- y_axis_font_size


#' Style for y-axis labels
#'
#' This specifies the style for y-axis labels.
#'
#' @export
hc_y_style <- function() {
  list(
    color = color_font,
    fontFamily = font_family,
    fontSize = y_axis_font_size,
    fontWeight = "medium"
  )
}

#' Style for x-axis labels
#'
#' This specifies the style for x-axis labels.
#'
#' @export
hc_x_style <- function() {
  list(
    color = color_font,
    fontFamily = font_family,
    fontSize = y_axis_font_size,
    fontWeight = "medium"
  )
}

#' Style for main titles for charts.
#'
#' This specifies the style for chart titles.
#'
#' @export
hc_title_style <- function() {
  list(
    color = color_font,
    fontFamily = font_family,
    fontSize = title_font_size
  )
}
