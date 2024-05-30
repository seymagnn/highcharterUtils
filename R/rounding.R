box::use(
  htmlwidgets,
)

#' Function to format large numeric values
#'
#' This function formats large numeric values into a more readable format,
#' such as representing billions as 'B', millions as 'M', and thousands as 'K'.
#'
#' @export
format_large_numeric_value <- function() {
  htmlwidgets$JS(
    "function() {
        if (Math.abs(this.value) >= 1000000000) {
            return (this.value / 1000000000) + 'B';
        } else if (Math.abs(this.value) >= 1000000) {
            return (this.value / 1000000) + 'M';
        } else if (Math.abs(this.value) >= 1000) {
            return (this.value / 1000) + 'K';
        } else {
            return this.value;
        }
    }"
  )
}


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
        var point = this.point;
        var formattedNumber;
        var tooltip = 'Date: ' + (this.x) + '<br>';
        Highcharts.each(this.points, function(p) {
            if (Math.abs(p.y) >= 1000000000) {  // check for billions
                formattedNumber = (p.y / 1000000000).toFixed(1) + 'B';
            } else if (Math.abs(p.y) >= 1000000) {  // check for millions
                formattedNumber = (p.y / 1000000).toFixed(1) + 'M';
            } else if (Math.abs(p.y) >= 1000) {  // check for thousands
                formattedNumber = (p.y / 1000).toFixed(1) + 'K';
            } else if (Math.abs(p.y) >= 1) {
                formattedNumber = (p.y / 1).toFixed(1);
            } else {
                formattedNumber = p.y;
            }
            tooltip += p.series.name + ': ' + '$' + formattedNumber + '<br>';
        });

        return tooltip;
    }"
  )
}

