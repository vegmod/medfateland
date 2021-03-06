# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

.genros <- function(phi, theta, a1, a2, b, n1, n2, c) {
    .Call(`_medfateland_genros`, phi, theta, a1, a2, b, n1, n2, c)
}

.ellipseROS <- function(phi, theta, vws, ros) {
    .Call(`_medfateland_ellipseROS`, phi, theta, vws, ros)
}

.doubleEllipseROS <- function(phi, theta, vws, ros) {
    .Call(`_medfateland_doubleEllipseROS`, phi, theta, vws, ros)
}

.fireBrandFallingHeight <- function(initialHeight, timeFalling, Dp) {
    .Call(`_medfateland_fireBrandFallingHeight`, initialHeight, timeFalling, Dp)
}

.totalFirebrandLoftingTime <- function(z, z0, zF, Dp) {
    .Call(`_medfateland_totalFirebrandLoftingTime`, z, z0, zF, Dp)
}

.totalGasFlowPersistenceTime <- function(z, t0, zF) {
    .Call(`_medfateland_totalGasFlowPersistenceTime`, z, t0, zF)
}

.findFireBrandLoftedHeight <- function(t0, z0, zF, Dp) {
    .Call(`_medfateland_findFireBrandLoftedHeight`, t0, z0, zF, Dp)
}

.willBurnWhenHitFloor <- function(zIni, Dp) {
    .Call(`_medfateland_willBurnWhenHitFloor`, zIni, Dp)
}

.fireBrandBurningTimeFromCanopyStructure <- function(LAIc) {
    .Call(`_medfateland_fireBrandBurningTimeFromCanopyStructure`, LAIc)
}

.fireBrandFlameHeightFromCanopyStructure <- function(crownLength, LAIc) {
    .Call(`_medfateland_fireBrandFlameHeightFromCanopyStructure`, crownLength, LAIc)
}

drainageCells <- function(queenNeigh, waterQ, iCell) {
    .Call(`_medfateland_drainageCells`, queenNeigh, waterQ, iCell)
}

.getTrackSpeciesTranspiration <- function(trackSpecies, Eplant, x) {
    .Call(`_medfateland_getTrackSpeciesTranspiration`, trackSpecies, Eplant, x)
}

.getTrackSpeciesDDS <- function(trackSpecies, DDS, x) {
    .Call(`_medfateland_getTrackSpeciesDDS`, trackSpecies, DDS, x)
}

.wswbDay <- function(lct, xList, soilList, waterO, queenNeigh, waterQ, bedrock, aquifer, snowpack, correctionFactors, date, gridMeteo, latitude, elevation, slope, aspect, patchsize) {
    .Call(`_medfateland_wswbDay`, lct, xList, soilList, waterO, queenNeigh, waterQ, bedrock, aquifer, snowpack, correctionFactors, date, gridMeteo, latitude, elevation, slope, aspect, patchsize)
}

