box::use(
  htmlwidgets,
)

#' Function to format tooltips
#'
#' This function customizes the tooltip content for Highcharts charts.
#' It formats large numbers and adds them to the tooltip content.
#'
#' @export
format_tooltip <- function() {
  htmlwidgets::JS(
    "function() {
    var date = new Date(this.x);
    var tooltip = '<b>' + 'Date'  + '</b>: ' + this.x + '<br>';
    Highcharts.each(this.points, function(p) {
      var formattedNumber;
      var absY = Math.abs(p.y);
      if (absY >= 1e9) {
        formattedNumber = (p.y / 1e9).toFixed(2) + 'B';
      } else if (absY >= 1e6) {
        formattedNumber = (p.y / 1e6).toFixed(2) + 'M';
      } else if (absY >= 1e3) {
        formattedNumber = (p.y / 1e3).toFixed(2) + 'K';
      } else {
        formattedNumber = p.y.toFixed(2);
      }
      tooltip += '<b>' + p.series.name + '</b>: ' + '$' + formattedNumber + '<br>';
    });

    return tooltip;
  }"
  )
}

