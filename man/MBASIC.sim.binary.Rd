% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/MBASIC_simulate.R
\name{MBASIC.sim.binary}
\alias{MBASIC.sim.binary}
\title{Simulate data for the MBASIC model with binary states.}
\usage{
MBASIC.sim.binary(I, fac, J, f, struct = NULL, beta = 0.1, zeta = 0.1,
  beta.non = 0.1, xi = 6, family = "lognormal")
}
\arguments{
\item{I}{An integer for the total number of units.}

\item{fac}{A vector of length N denoting the experimental condition for each replicate.}

\item{J}{An integer for the number of clusters.}

\item{f}{Numeric value for the target fold change. Default: 5. See \link{MBASIC.sim} for more information.}

\item{struct}{An K by J integer matrix. The j-th column denotes the levels for the cluster level parameter. See details for more information. Default: NULL.}

\item{beta}{Hyper parameter for simulating the entries of the W matrix. Each entry in the W matrix follows distribution Beta(beta, beta). Default: 0.1.}

\item{zeta}{The probability that each unit does not belong to any cluster. Default: 0.1.}

\item{beta.non}{The hyper parameter for simulating the probability for unclustered units. Default: 0.1.}

\item{xi}{Parameter for the magnitude of each observations. Default: 6. See \link{MBASIC.sim} for more information.}

\item{family}{A parameter for the family of distribution to be used. Either "lognormal" or "negbin". Default: "lognormal".}
}
\value{
A list containing:
\tabular{ll}{
 Mu0 \tab An N by I matrix. The (n,i)-th entry is the mean of the control experiment for the n-th experiment at unit i. \cr
 Y \tab A matrix where each row is the counts for each replicates at all loci. \cr
 W \tab A K by J matrix. Each row is the indicators of the loci sets related an individual replicate. \cr
 Z \tab An I by J matrix. Each column is the indicator for an individual loci set.\cr
 Theta \tab A K by I matrix. The (k,i)-th element is the indicator of whether the i-th unit is binding for condition k.\cr
 pi \tab A vector of length J. The j-th entry is the prior probability for each loci to belong to the j-th cluster.\cr
 non.id \tab A vector of length I indicating the number of each column not to belong to any cluster.\cr
fac \tab A vector of length N denoting the experimental condition for each replicate.\cr
 bkng \tab Mean value of the responses with background state.\cr
 snr \tab The ratio between the mean value of the responses with the binding state and the background state.\cr
}
}
\description{
This function simulates MBASIC model with two states: background or binding. This mimics the standard ChIP-seq experiment.
}
\examples{
dat.sim <- MBASIC.sim.binary(I = 100, fac = rep(1:5, each = 2), J = 3, f = 5)
}
\author{
Chandler Zuo \email{zuo@stat.wisc.edu}
}
\seealso{
\code{\link{MBASIC.sim}}
}

