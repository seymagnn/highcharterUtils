\name{hc_title_style}
\alias{hc_title_style}
\title{Style for main titles for charts}
\description{
This specifies the style for chart titles.
}
\usage{
hc_title_style
}
\value{
A function returning a list of style properties for chart titles.
}
\examples{
library(yourpackage)
highchart() %>%
  hc_title(text = "Chart Title", style = hc_title_style())
}
\keyword{datasets}
