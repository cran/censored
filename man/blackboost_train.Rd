% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boost_tree-mboost.R
\name{blackboost_train}
\alias{blackboost_train}
\title{Boosted trees via mboost}
\usage{
blackboost_train(
  formula,
  data,
  family,
  weights = NULL,
  teststat = "quadratic",
  testtype = "Teststatistic",
  mincriterion = 0,
  minsplit = 10,
  minbucket = 4,
  maxdepth = 2,
  saveinfo = FALSE,
  ...
)
}
\arguments{
\item{formula}{A symbolic description of the model to be fitted.}

\item{data}{A data frame containing the variables in the model.}

\item{family}{A \code{\link[mboost:Family]{mboost::Family()}} object.}

\item{weights}{An optional vector of weights to be used in the fitting process.}

\item{teststat}{A character specifying the type of the test statistic to be
applied for variable selection.}

\item{testtype}{A character specifying how to compute the distribution of
the test statistic. The first three options refer to p-values as criterion,
\code{"Teststatistic"} uses the raw statistic as criterion. \code{"Bonferroni"} and
\code{"Univariate"} relate to p-values from the asymptotic distribution (adjusted or
unadjusted). Bonferroni-adjusted Monte-Carlo p-values are computed when
both \code{"Bonferroni"} and \code{"MonteCarlo"} are given.}

\item{mincriterion}{The value of the test statistic or 1 - p-value that must
be exceeded in order to implement a split.}

\item{minsplit}{The minimum sum of weights in a node in order to be
considered for splitting.}

\item{minbucket}{The minimum sum of weights in a terminal node.}

\item{maxdepth}{The maximum depth of the tree. The default \code{maxdepth = Inf} means
that no restrictions are applied to tree sizes.}

\item{saveinfo}{Logical. Store information about variable selection procedure
in info slot of each partynode.}

\item{...}{Other arguments to pass.}
}
\value{
A fitted blackboost model.
}
\description{
\code{blackboost_train()} is a wrapper for the \code{blackboost()} function in the
\pkg{mboost} package that fits tree-based models
where all of the model arguments are in the main function.
}
\examples{
\dontshow{if (rlang::is_installed("mboost")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
blackboost_train(Surv(time, status) ~ age + ph.ecog,
  data = lung[-14, ], family = mboost::CoxPH()
)
\dontshow{\}) # examplesIf}
}
\keyword{internal}
