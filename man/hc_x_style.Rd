\name{hc_x_style}
\alias{hc_x_style}
\title{Style for x-axis labels}
\description{
This specifies the style for x-axis labels.
}
\usage{
hc_x_style
}
\value{
A function returning a list of style properties for x-axis labels.
}
\examples{
library(yourpackage)
highchart() %>%
  hc_xAxis(labels = hc_x_style())
}
\keyword{datasets}
