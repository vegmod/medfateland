\encoding{UTF-8}
\name{DistributedWatershed-class}
\Rdversion{1.1}
\docType{class}
\alias{DistributedWatershed-class}

\title{Class \code{"DistributedWatershed"}}
\description{
An S4 class that represents a landscape configuration over a grid of coordinates.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("DistributedWatershed", ...)}, or by calls to the function \code{\link{DistributedWatershed}}.
}
\section{Slots}{
  \describe{
    \item{\code{coords:}}{A matrix of pixel coordinates.}
    \item{\code{coords.nrs}:}{Inherited from \code{SpatialPointsDataFrame} but not used.}
    \item{\code{grid}:}{Object of class \code{"GridTopology"}. }
    \item{\code{grid.index}:}{Index of points in full grid.}
    \item{\code{bbox}:}{Object of class \code{"matrix"} with the boundary box. }
    \item{\code{proj4string}:}{Object of class \code{"CRS"} with the projection string.}   
    \item{\code{data}:}{Object of class "data.frame" containing the elevation (in m), slope (in degrees) and aspect (in degrees from North) of every cell.}
    \item{\code{lct}:}{A character vector with the land cover type of each grid cell (values should be 'wildland', 'agriculture', 'rock', 'artificial' or 'water').}
    \item{\code{waterOrder}:}{A numeric vector of cell processing order.}
    \item{\code{waterQ}:}{A list of water discharge values to neighbours.}
    \item{\code{queenNeigh}:}{A list of neighbours for each cell.}
    \item{\code{channel}:}{A logical vector indicating whether each cell belongs to the channel network.}
    \item{\code{aquifer}:}{A numeric vector with the water content of the aquifer in each cell.}
    \item{\code{snowpack}:}{A numeric vector with the snow water equivalent content of the snowpack in each cell.}
    \item{\code{forestlist}:}{Object of class \code{"list"} containing a set of \code{\link{forest}} objects.  }
    \item{\code{soillist}:}{Object of class \code{"list"} containing a set of \code{\link{soil}} objects.}
    \item{\code{xlist}:}{Object of class \code{"list"} containing a set of spwb or growth model input objects.}
  }
}
\section{Extends}{
Class \code{"\linkS4class{SpatialPixelsLandscape}"}, directly.
Class \code{"\linkS4class{SpatialPixelsTopography}"}, distance 2.
Class \code{"\linkS4class{SpatialPixelsDataFrame}"},  distance 3.
Class \code{"\linkS4class{SpatialPixels}"}, distance 4.
Class \code{"\linkS4class{SpatialPointsDataFrame}"}, distance 4.
Class \code{"\linkS4class{SpatialPoints}"}, distance 5.
Class \code{"\linkS4class{Spatial}"}, distance 6.
Class \code{"SpatialVector"}, distance 6.
}
\section{Methods}{
  \describe{
    \item{spatialForestSummary}{\code{signature(object = "DistributedWatershed")}: calculates a summary function for all forest stands and returns an object of class \code{\link{SpatialPixelsDataFrame-class}}. }
    \item{spatialSoilSummary}{\code{signature(object = "DistributedWatershed")}: calculates a summary function for the soil of all stands and returns an object of class \code{\link{SpatialPixelsDataFrame-class}}. }
    \item{spplot}{\code{signature(object = "DistributedWatershed")}: allows plotting maps of the watershed state.}
	 }
}

\author{
Miquel De \enc{Cáceres}{Caceres} Ainsa, CREAF
}

\seealso{
\code{\link{SpatialPixelsTopography-class}}, \code{\link{SpatialPixelsLandscape-class}}
}
\examples{
#Structure of the S4 object
showClass("DistributedWatershed")
}
\keyword{classes}
