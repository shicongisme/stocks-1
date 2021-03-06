% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mdd.R
\name{mdd}
\alias{mdd}
\title{Maximum Drawdown}
\usage{
mdd(prices = NULL, highs = NULL, lows = NULL, gains = NULL,
  indices = FALSE)
}
\arguments{
\item{prices}{Numeric vector of daily closing prices.}

\item{highs}{Numeric vector of daily high prices.}

\item{lows}{Numeric vector of daily low prices.}

\item{gains}{Data frame with one column of gains for each investment (extra 
non-numeric columns are ignored), or numeric vector for one investment.}

\item{indices}{Logical value for whether to include indices for when the 
maximum drawdown occurred.}
}
\value{
Numeric value, vector, or matrix depending on \code{indices} and whether 
there is 1 fund or several.
}
\description{
Calculates maximum drawdown from vector of closing prices, highs and lows, or 
gains. Missing values should be removed prior to calling this function.
}
\examples{
\dontrun{
# Calculate MDD's for FANG stocks in 2018
prices <- load_prices(c("FB", "AAPL", "NFLX", "GOOG"), from = "2018-01-01", 
                      to = "2018-12-31")
sapply(prices[-1], mdd)
}


}
