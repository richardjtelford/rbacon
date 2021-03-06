% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bacon.R
\name{thinner}
\alias{thinner}
\title{Thin iterations by given proportion, for example if autocorrelation is visible within the MCMC series, and then update the output file.}
\usage{
thinner(proportion = 0.1, set = get("info"))
}
\arguments{
\item{proportion}{Proportion of iterations to remove. Should be between 0 and 1. Default \code{proportion=0.1}.}

\item{set}{Detailed information of the current run, stored within this session's memory as variable \code{info}.}
}
\value{
NA
}
\description{
Thin iterations by given proportion, for example if autocorrelation is visible within the MCMC series.
}
\details{
From all iterations, a proportion is removed with to-be-removed iterations sampled randomly among all iterations.
}
\examples{
\dontshow{
  Bacon(run=FALSE, coredir=tempfile())
  thinner(.1)
  agedepth(d.res=50, yr.res=50, d.by=10)
}
\donttest{
  Bacon(ask=FALSE, coredir=tempfile())
  thinner(.2)
  agedepth()
}

}
\references{
Blaauw, M. and Christen, J.A., Flexible paleoclimate age-depth models using an autoregressive 
gamma process. Bayesian Anal. 6 (2011), no. 3, 457--474. 
\url{https://projecteuclid.org/download/pdf_1/euclid.ba/1339616472}
}
\seealso{
\url{http://www.chrono.qub.ac.uk/blaauw/manualBacon_2.3.pdf}
}
\author{
Maarten Blaauw, J. Andres Christen
}
