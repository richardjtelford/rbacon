% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bacon.R
\name{accrate.age.ghost}
\alias{accrate.age.ghost}
\title{Plot a core's accumulation rates against calendar time.}
\usage{
accrate.age.ghost(set = get("info"), yr.lim = c(), yr.lab = c(),
  yr.res = 200, grey.res = 50, prob = 0.95, plot.range = TRUE,
  range.col = grey(0.5), range.lty = 2, plot.mean = TRUE,
  mean.col = "red", mean.lty = 2, acc.lim = c(), acc.lab = c(),
  upper = 0.99, dark = 50, BCAD = set$BCAD, cmyr = FALSE,
  rotate.axes = FALSE, rev.yr = FALSE, rev.acc = FALSE, xaxs = "i",
  yaxs = "i", bty = "o")
}
\arguments{
\item{set}{Detailed information of the current run, stored within this session's memory as variable info.}

\item{yr.lim}{Minimum and maximum calendar age ranges, calculated automatically by default (\code{yr.lim=c()}).}

\item{yr.lab}{The labels for the calendar axis (default \code{yr.lab="cal BP"} or \code{"BC/AD"} if \code{BCAD=TRUE}).}

\item{yr.res}{Resolution or amount of greyscale pixels to cover the age scale of the age-model plot. Default \code{yr.res=200}.}

\item{grey.res}{Resolution of greyscales. Default \code{grey.res=50}, which does not aim to poke fun at a famous novel.}

\item{prob}{Probability ranges. Defaults to \code{prob=0.95}.}

\item{plot.range}{If \code{plot.range=TRUE}, the confidence ranges (two-tailed; half of the probability at each side) are plotted.}

\item{range.col}{Colour of the confidence ranges.}

\item{range.lty}{Line type of the confidence ranges.}

\item{plot.mean}{If \code{plot.mean=TRUE}, the means are plotted.}

\item{mean.col}{Colour of the mean accumulation rates.}

\item{mean.lty}{Type of the mean lines.}

\item{acc.lim}{Axis limits for the accumulation rates.}

\item{acc.lab}{Axis label for the accumulation rate.}

\item{upper}{Maximum accumulation rates to plot. Defaults to the upper 99\%; \code{upper=0.99}.}

\item{dark}{The darkest grey value is dark=1 by default; lower values will result in lighter grey but values >1 are not advised.}

\item{BCAD}{The calendar scale of graphs and age output-files is in \code{cal BP} by default, but can be changed to BC/AD using \code{BCAD=TRUE}.}

\item{cmyr}{Accumulation rates can be calculated in cm/year or year/cm. By default \code{cmyr=FALSE} and accumulation rates are calculated in year per cm. Axis limits are difficult to calculate when \code{cmyr=TRUE}, so a manual adaptation of \code{acc.lim} might be a good idea.}

\item{rotate.axes}{The default is to plot the calendar age horizontally and accumulation rates vertically. Change to \code{rotate.axes=TRUE} value to rotate axes.}

\item{rev.yr}{The direction of the age axis, which can be reversed using \code{rev.yr=TRUE}.}

\item{rev.acc}{The direction of the accumulation rate axis, which can be reversed (\code{rev.acc=TRUE}.}

\item{xaxs}{Extension of the x-axis. White space can be added to the vertical axis using \code{xaxs="r"}.}

\item{yaxs}{Extension of the y-axis. White space can be added to the vertical axis using \code{yaxs="r"}.}

\item{bty}{Type of box to be drawn around the plot (\code{"n"} for none, and \code{"l"} (default), \code{"7"}, \code{"c"}, \code{"u"}, or \code{"o"} for correspondingly shaped boxes).}
}
\value{
A greyscale plot of accumulation rate against calendar age.
}
\description{
Plot a grey-scale representation of a core's estimated accumulation rates against time.
}
\details{
Calculating accumulation rates against calendar age will take some time to calculate, and might show unexpected 
rates around the core's maximum ages (only a few of all age-model iterations will reach such ages and they will tend to have
 modelled accumulation rates for the lower depths much lower than the other iterations). Axis limits for accumulation rates
  are estimated automatically, however upper limits can be very variable (and thus hard to predict) if calculated in \code{cm/yr}.
 Therefore you might want to manually adapt the axis limits after plotting with default settings (e.g., \code{acc.lim=c(0,1)}). See also \code{accrate.depth.ghost}, \code{accrate.depth} and \code{accrate.age}.
The grey-scale reconstruction around the oldest ages of any reconstruction often indicates very low accumulation rates. 
This is due to only some MCMC iterations reaching those old ages, and these iterations will have modelled very slow accumulation rates. 
Currently does not deal well with hiatuses, so do not interpret accumulation rates close to depths with inferred hiatuses.
}
\examples{
  Bacon(run=FALSE, coredir=tempfile())
  agedepth(yr.res=50, d.res=50, d.by=10)
  layout(1)
  accrate.age.ghost()
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
