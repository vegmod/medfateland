\encoding{UTF-8}
\name{wswb}
\alias{wswb}
\alias{plot.wswb}
\title{Soil-plant water balance and lateral water discharge}
\description{
Function \code{wswb} conducts daily soil and plant water balance over a grid of cells while incorporating water runoff from upperslope cells into the current cell.
}
\usage{
wswb(y, SpParams, meteo, dates,
           summaryFreq = "years",
           control = defaultControl())
\method{plot}{wswb}(x, type = "Runon", summaryIndex = 1, spIndex = NULL, ...)
}
\arguments{
  \item{y}{An object of class \code{\link{SpatialGridLandscape-class}}.}
  \item{SpParams}{A data frame with species parameters (see \code{\link{SpParamsMED}}).}
  \item{meteo}{Input meteorological data (see section details).}
  \item{dates}{A \code{\link{Date}} object describing the days of the period to be modeled.}
  \item{summaryFreq}{Frequency in which summary layers will be produced (e.g. "years", "months", ...) (see \code{\link{cut.Date}}).}
  \item{control}{A list of control parameters (see \code{\link{defaultControl}}).}
  \item{x}{An object of class \code{spwbgrid}.}
  \item{type}{Type of information to be drawn.}
  \item{summaryIndex}{The index of the summary to be ploted.}
  \item{spIndex}{The index of the species to be ploted (for some types).}
  \item{...}{Additional parameters to function \code{\link{spplot}}.}
}
\details{
Function \code{wswb} requires daily meteorological data over a grid. The user may supply four different inputs:
\enumerate{
\item{An object of \code{\link{SpatialGridMeteorology-class}}.}
\item{An object of \code{\link{MeteorologyInterpolationData-class}}.}
\item{A data frame with information regarding where to read meteorological data.}
\item{A data frame with meteorological data common for all cells of the grid.}
}
In the case of (1), all the spatio-temporal variation of weather is already supplied by the user. In the case of (2), interpolation of weather is done over the grid every simulated day. In the case of (3) weather maps are read for each day. Finally, in the case of (4) spatial variation of weather is not considered.
}
\value{
A list of class 'wswb' with the following elements:
\itemize{
 \item{\code{grid}: The \code{\link{GridTopology}} object corresponding to the simulated area.}
 \item{\code{LandscapeBalance}: A data frame with as many rows as summary points and where columns are components of the water balance at the landscape level (i.e., rain, snow, interception, infiltration, soil evaporation, plant transpiration, ...).}
 \item{\code{CellBalance}: A list of matrices (each with as many rows as cells and as many columns as summary points) representing the water balance for each cell:
   \itemize{
     \item{\code{Rain}: Rainfall (in mm).}
     \item{\code{Snow}: Snowfall (in mm).}
     \item{\code{Interception}: Rainfall interception (in mm).}
     \item{\code{Infiltration}: The amount of water infiltrating into the soil (in mm).}
     \item{\code{Runon}: The amount of water imported from other cells via surface runoff (in mm).}
     \item{\code{Runoff}: The amount of water exported via surface runoff (in mm).}
     \item{\code{DeepDrainage}: The amount of water exported via deep drainage (in mm).}
     \item{\code{SoilEvaporation}: Bare soil evaporation (in mm).}
     \item{\code{Transpiration}: Plant transpiration (in mm).}
  }
 }
 \item{\code{CellState}: A list of matrices (each with as many rows as cells and as many columns as summary points) representing the average soil state for each cell:
   \itemize{
     \item{\code{SWE}: Snow water equivalent (in mm) of the snowpack.}
     \item{\code{Psi1}: Soil water potential of the topmost layer (in MPa).}
     \item{\code{Volume}: Soil water volume integrated across vertical layers (in mm).}
     \item{\code{WTD}: Water table depth (in mm from surface).}
  }
 }
 \item{\code{DailyRunoff}: A matrix with daily runoff (in m3/day) at each of the outlet cells of the landscape.}
}
}
\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, CTFC.
}
\seealso{
\code{\link{spwb}}, \code{\link{spwbpoints}}, \code{\link{SpatialGridLandscape-class}}
}
\examples{
library(medfateland)
code = "2004116"
spt = readRDS(paste0("D:/Datasets/Hydrology/Products/Catalonia/SpatialPixelsTopography/",code,".rds"))
lct = readRDS(paste0("D:/Datasets/Hydrology/Products/Catalonia/LandUse/",code,".rds"))
forestlist = readRDS(paste0("D:/Datasets/Hydrology/Products/Catalonia/Forests/",code,".rds"))
soillist = readRDS(paste0("D:/Datasets/Hydrology/Products/Catalonia/Soils/",code,".rds"))
dw = DistributedWatershed(spt, lct, forestlist, soillist)
meteo = readRDS("D:/Datasets/Climate/Products/MeteorologyInterpolationData/interpolator_2019_calibrated.rds")
data("SpParamsMED")
dates = seq(as.Date("2019-01-01"), as.Date("2019-01-15"), by="day")
}