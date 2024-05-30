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
bgColor <- "#2f2f2f"

#' Font color for text elements
#'
#' This specifies the color of the text elements such as titles, axes labels, and legends.
#'
#' @export
color_font <- "white"

#' Font size for titles
#'
#' This specifies the font size of the chart titles.
#'
#' @export
title_font_size <- "20px"

#' Font size for y-axis labels
#'
#' This specifies the font size of the y-axis labels.
#'
#' @export
y_axis_font_size <- "14px"

#' Font size for x-axis labels
#'
#' This specifies the font size of the x-axis labels.
#'
#' @export
x_axis_font_size <- y_axis_font_size

#' Font color for legend item style
#'
#' This specifies the font color for legend items.
#'
#' @export
legend_itemstyle_font_color <- "grey"

#' Font color for hidden legend items
#'
#' This specifies the font color for legend items when they are hidden.
#'
#' @export
legend_itemhiddenstyle_font_color <- '#606063'

#' Active axis label style
#'
#' This specifies the style for active axis labels.
#'
#' @export
active_axis_label_style <- "white"

#' Get legend list
#'
#' This function returns a list of styles for legends.
#'
#' @export
get_legend_list <- function() {
  list(
    itemStyle = list(
      fontFamily = font_family,
      color = legend_itemstyle_font_color
    ),
    itemHoverStyle = list(color = color_font),
    itemHiddenStyle = list(
      fontFamily = font_family,
      color = legend_itemhiddenstyle_font_color
    )
  )
}

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
