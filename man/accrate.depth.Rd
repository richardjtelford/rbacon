% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bacon.R
\name{accrate.depth}
\alias{accrate.depth}
\title{Obtain estimated accumulation rates as for any depth of a core.}
\usage{
accrate.depth(d, set = get("info"), cmyr = FALSE)
}
\arguments{
\item{d}{The depth for which accumulation rates need to be returned.}

\item{set}{Detailed information of the current run, stored within this session's memory as variable \code{info}.}

\item{cmyr}{Accumulation rates can be calculated in cm/year or year/cm. By default \code{cmyr=FALSE} and accumulation rates are calculated in year per cm.}
}
\value{
all MCMC estimates of accumulation rate of the chosen depth.
}
\description{
Obtain accumulation rates (in years per cm, so actually sedimentation times) as estimated by the MCMC iterations for any depth of a core.
}
\details{
should take into account hiatuses

Considering accumulation rates is crucial for age-depth modelling, and even more so if they are subsequently used for calculating proxy
influx values, or interpreted as proxy for environmental change such as carbon accumulation. 
Bacon deals explicitly with accumulation rate and its variability through defining prior distributions.
This function obtains accumulation rates (in years per cm, so actually sedimentation times) as estimated by the MCMC iterations 
for any depth of a core. Deals with only 1 depth at a time. See also \code{accrate.age}.
}
\examples{
  Bacon(run=FALSE, coredir=tempfile()) 
  agedepth(yr.res=50, d.res=50, d.by=10)
  d20 <- accrate.depth(20)
  hist(d20)
  d20 <- accrate.depth(20, cmyr=TRUE) # to calculate accumulation rates in cm/yr
  mean(d20)
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
