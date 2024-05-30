\name{hc_y_style}
\alias{hc_y_style}
\title{Style for y-axis labels}
\description{
This specifies the style for y-axis labels.
}
\usage{
hc_y_style
}
\value{
A function returning a list of style properties for y-axis labels.
}
\examples{
library(yourpackage)
highchart() %>%
  hc_yAxis(labels = hc_y_style())
}
\keyword{datasets}
