% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_metrics_overtime.R
\name{calc_metrics_overtime}
\alias{calc_metrics_overtime}
\title{Calculate Performance Metrics over Time}
\usage{
calc_metrics_overtime(gains = NULL, metrics = c("mean", "sd"),
  tickers = NULL, ..., type = "hop.year", minimum.n = 3,
  prices = NULL, benchmark = "SPY")
}
\arguments{
\item{gains}{Data frame with one column of gains for each investment and a
date variable named Date.}

\item{metrics}{Character vector specifying metrics to calculate. See
\code{?calc_metrics} for choices.}

\item{tickers}{Character vector of ticker symbols that Yahoo! Finance
recognizes, if you want to download data on the fly.}

\item{...}{Arguments to pass along with \code{tickers} to
\code{\link{load_gains}}.}

\item{type}{Character string or vector specifying type of calculation.
Choices are (1) \code{"roll.n"} where n is a positive integer; (2)
\code{"hop.n"} where n is a positive integer; (3) \code{"hop.month"}; (4)
\code{"hop.year"}; and (5) vector of break-point dates, e.g.
\code{c("2019-01-01", "2019-06-01")} for 3 periods. The "roll" and "hop"
options correspond to rolling and disjoint windows, respectively.}

\item{minimum.n}{Integer value specifying the minimum number of observations
per period, e.g. if you want to exclude short partial months at the beginning
or end of the analysis period.}

\item{prices}{Data frame with a date variable named Date and one column of
prices for each investment.}

\item{benchmark}{Character string specifying which fund to use as a
benchmark for metrics that require one.}
}
\value{
Data frame with performance metrics for each investment.
}
\description{
Useful for assessing how one or two performance metrics vary over time, for
one or several funds. Supports fixed-width rolling windows, fixed-width
disjoint windows, and disjoint windows on per-month or per-year basis.
}
\examples{
\dontrun{
# Calculate annual CAGR's, MDD's, and Sharpe ratios for FANG stocks
calc_metrics_overtime(
  tickers = c("FB", "AAPL", "NFLX", "GOOG"),
  metrics = c("cagr", "mdd", "sharpe"),
  type = "hop.year"
)
}


}
