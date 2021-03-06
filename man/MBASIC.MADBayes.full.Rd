% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/MBASIC_MADBayes.R
\name{MBASIC.MADBayes.full}
\alias{MBASIC.MADBayes.full}
\title{MAD-Bayes method to fit the MBASIC model.}
\usage{
MBASIC.MADBayes.full(Y, Gamma = NULL, fac, lambdaw = NULL, lambda = NULL,
  maxitr = 30, S = 2, tol = 1e-10, ncores = 15, nfits = 1,
  nlambdas = 30, para = NULL, initialize = "kmeans")
}
\arguments{
\item{Y}{An N by I matrix containing the data from N experiments across I observation units (loci).}

\item{Gamma}{An N by I matrix for the prior estimated mean for the background state, for N experiments across the I observation units (loci).}

\item{fac}{A vector of length N denoting the experimental condition for each replicate.}

\item{maxitr}{The maximum number of iterations in the E-M algorithm. Default: 100.}

\item{S}{The number of different states.}

\item{tol}{Tolerance for error in checking the E-M algorithm's convergence. Default: 1e-04.}

\item{ncores}{The number of CPUs to be used for parallelization.}

\item{nfits}{The number of random restarts of the model.}

\item{lambdap,lambdaw,lambda}{Tuning parameters.}

\item{family}{The distribution of family to be used. Either "lognormal" or "negbin". See details for more information.}
}
\value{
A list object including the following fields:
\tabular{ll}{
allFits \tab A list of \linkS4class{MBASICFit} objects for the best model fit with each lambda.\cr
lambda \tab A vector of all lambdas corresponding to \code{allFits}.\cr
Loss \tab A vector for the loss corresponding to \code{allFits}.\cr
BestFit \tab The \linkS4class{MBASICFit} object with largest Silhouette score.\cr
Iter \tab Number of iterations for \code{BestFit}.\cr
Time \tab Time in seconds used to fit the model.\cr
}
}
\description{
MAD-Bayes method to fit the MBASIC model.
}
\details{
TODO.
}
\author{
Chandler Zuo \email{zuo@stat.wisc.edu}
}

