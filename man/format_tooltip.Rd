\name{format_tooltip}
\alias{format_tooltip}
\title{Function to format tooltips}
\description{
This function customizes the tooltip content for Highcharts charts. It formats large numbers and adds them to the tooltip content.
}
\usage{
format_tooltip()
}
\value{
A JavaScript function that customizes the tooltip content.
}
\examples{
library(yourpackage)
highchart() %>%
  hc_tooltip(formatter = format_tooltip())
}
\keyword{datasets}
