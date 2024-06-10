# highcharterUtils

This project is an R package that provides helper functions for themes, colors, and rounding while working with the highcharter library in R.

Installation
To install the package, first clone the repository and then install it within R:

```
# Install the devtools package 
install.packages("devtools")

# Install the highcharterUtils package
devtools::install_github("highcharterUtils")
```

# Usage

The highcharterUtils package allows you to easily customize the appearance and style of your charts when using highcharter. The package includes various theme and color functions, as well as helper functions for rounding numerical data.

## Functions

### Theme Functions
Customize the style of your charts.

`custom_theme()`: Creates a generic theme using the styles from the styles.R script.

### Color Functions
Provides predefined color palettes for use in your charts. These palettes provide custom colors that can be used for chart elements such as series, backgrounds, or legends.

`custom_colors()`: Regular color palette.
`soft_colors()`: Specifically designed for drilldown charts.
`circle_colors()`: Allows you to use in charts like a pie chart

### Rounding Functions
Rounds your numerical data to specified digits.

`format_tooltip()`: Rounds the values in the data to the specified number of digits and separates between thousands, millions, and billions.

## Example Usage:
Below is an example of how to use the highcharterUtils package:

```

library(highcharter)
library(highcharterUtils)

# Sample data creation
companies <- c("Apple", "Google", "Amazon")
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-05-31")
dates <- seq(start_date, end_date, by = "month")
dates <- format(dates, "%Y-%m-%d")

# Generate random index values
set.seed(42)  # Set seed for reproducibility
data <- expand.grid(date = dates, company = companies)
data$value <- rnorm(nrow(data), mean = 100, sd = 10)
data$value <- data$value * 100000

# Create Highcharter line chart
highchart() %>%
  hc_title(text = "Company Index Values") %>%
  hc_xAxis(categories = unique(data$date), title = list(text = "Date")) %>%
  hc_yAxis(title = list(text = "Index Value")) %>%
  hc_add_series(
    data = subset(data, company == "Apple"),
    type = "line",
    hcaes(x = date, y = value),
    name = "Apple"
  ) %>%
  hc_add_series(
    data = subset(data, company == "Google"),
    type = "line",
    hcaes(x = date, y = value),
    name = "Google"
  ) %>%
  hc_add_series(
    data = subset(data, company == "Amazon"),
    type = "line",
    hcaes(x = date, y = value),
    name = "Amazon"
  ) %>%
  hc_add_theme(custom_theme())

```

https://github.com/seymagnn/highcharterUtils/assets/80623252/895681cb-d2b9-437c-becb-7d09eef9724e


# Contributing
If you would like to contribute, please submit a pull request or open an issue. I appreciate all feedback and contributions.
