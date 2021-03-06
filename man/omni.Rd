% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/omni.R
\name{omni}
\alias{omni}
\title{omni embedding}
\usage{
omni(A, B, d = 2, nbs = 500, do.null = TRUE, runQ = TRUE, pvec = 0.5)
}
\arguments{
\item{A}{a \eqn{n} x \eqn{n} matrix}

\item{B}{a \eqn{n} x \eqn{n} matrix}

\item{d}{an embedding dimension}

\item{nbs}{a number of bootstrapping}

\item{do.null}{a boolean to decide to calculate null distribution of the test statistics}

\item{runQ}{a boolean to decide to calculate null distribution of the test statistics for the given graphs}

\item{pvec}{an edge probability vector for ER random graphs for the null statistics}
}
\description{
Get the omnibus embedding and compute the test statistic,
which is given by the squared Frobenius norm between the two embeddings.
}
\author{
Youngser Park <youngser@jhu.edu>
}
