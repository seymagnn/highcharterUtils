box::use(
  highcharter,
)

#' Tile theme for Highcharter charts
#'
#' This theme provides a customized appearance for Highcharter charts suitable for tile maps.
#'
#' @export
tile_theme <- function() {
  highcharter$hc_theme(
    thousandsSep = '*',
    colors = custom_colors,
    chart = list(
      backgroundColor = bgColor
    ),
    xAxis = list(
      labels = list(
        style = hc_x_style
      )
    ),
    yAxis = list(
      labels = list(
        style = hc_y_style
      )
    ),
    title = list(
      style = hc_title_style
    ),
    legend = legend_list,
    lang = list(
      thousandsSep = "*"
    )
  )
}

#' Double line theme for Highcharter charts
#'
#' This theme provides a customized appearance for Highcharter charts with double lines.
#'
#' @export
double_line_theme <- function() {
  highcharter$hc_theme(
    thousandsSep = '*',
    colors = custom_colors,
    chart = list(
      backgroundColor = bgColor
    ),
    legend = legend_list,
    xAxis = list(
      gridLineWidth = 0,
      labels = list(
        style = hc_x_style
      )
    ),
    yAxis = list(
      gridLineWidth = 0,
      labels = list(
        formatter = format_large_numeric_value,
        style = hc_y_style
      )
    ),
    title = list(
      style = hc_title_style
    ),
    tooltip = list(
      shared = TRUE,
      crosshairs = TRUE,
      useHTML = TRUE,
      headerFormat = "<b>{point.x}</b><br>",
      pointFormat = "{series.name}: {point.y}<br>",
      formatter = format_tooltip
    )
  )
}
