\encoding{UTF-8}
\name{medfate spatial}
\alias{spwbpoints}
\alias{spwbpixels}
\alias{spwbgrid}
\alias{growthpoints}
\alias{growthpixels}
\alias{growthgrid}
\alias{fordynpoints}
\alias{fordynpixels}
\alias{fordyngrid}

\title{Medfate simulations for spatially-distributed forest stands}
\description{
Functions that allow calling local models \code{\link{spwb}}, \code{\link{growth}} or \code{\link{fordyn}}, for a set of forest stands distributed in specific locations. No spatial processes are simulated.
}
\usage{
spwbpoints(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
spwbpixels(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
spwbgrid(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
growthpoints(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
growthpixels(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
growthgrid(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
fordynpoints(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
fordynpixels(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
fordyngrid(y, SpParams, meteo, control = defaultControl(),
       dates = NULL, summaryFunction = NULL, args=NULL, 
       parallelize = FALSE, progress = TRUE)
}
\arguments{
  \item{y}{An object of class \code{\link{SpatialPointsLandscape-class}}, \code{\link{SpatialPixelsLandscape-class}} or \code{\link{SpatialGridLandscape-class}}, depending on the function called.}
  \item{SpParams}{A data frame with species parameters (see \code{\link{SpParamsMED}}).}
  \item{meteo}{Meteorology data (see details).}
  \item{control}{A list of model control parameters (see \code{\link{defaultControl}}).}
  \item{dates}{A \code{\link{Date}} object with the days of the period to be simulated. If \code{NULL}, then the whole period of \code{meteo} is used.}
  \item{summaryFunction}{An appropriate function to calculate summaries (e.g., \code{\link{summary.spwb}}).}
  \item{args}{List with additional arguments for the summary function.}
  \item{parellize}{Boolean flag to try parallelization (will use all clusters minus one).}
  \item{progress}{Boolean flag to display progress bar for simulations.}
}
\details{
Simulation functions  accept different formats for meteorological input (parameter \code{meteo}). The user may supply three kinds of weather sources:
\enumerate{
\item{An object of \code{\link{SpatialPointsMeteorology-class}}, \code{\link{SpatialGridMeteorology-class}} or \code{\link{SpatialPixelsMeteorology-class}}, with the same spatial geometry as \code{y}.}
\item{An object of \code{\link{MeteorologyInterpolationData-class}}.}
\item{A data frame with meteorological data common for all points or grid cells.}
}
In the case of (1), all the spatio-temporal variation of weather is already supplied by the user. In the case of (2), interpolation of weather is done for each spatial location and the period indicated in \code{meteo} or, if supplied, \code{dates}. Finally, in the case of (3) spatial variation of weather is not considered.
}
\value{
A list of class of the same name as the function called, containing spatial information of the input data and two child lists:
\enumerate{
\item{\code{xlist}: A list of model input objects for each simulated stand.}
\item{\code{reslist}: A list of model output for each simulated stand.}
}
}
\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, CREAF
}
\seealso{
\code{\link{spwb}}, \code{\link{growth}}, \code{\link{fordyn}}
}
\examples{

\dontrun{
#Load example watershed (inherits from SpatialPixelsLandscape)
data("examplepointslandscape")

#Load example meteo data frame from package meteoland
data("examplemeteo")

#Load default medfate parameters
data("SpParamsMED")

dates = seq(as.Date("2001-03-01"), as.Date("2001-03-15"), by="day")

res = spwbpoints(examplepointslandscape, SpParamsMED, examplemeteo, dates = dates, 
                 summaryFunction = summary.spwb)
}
}