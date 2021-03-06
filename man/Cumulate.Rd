% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/node_methods.R
\name{Cumulate}
\alias{Cumulate}
\title{Cumulate values among siblings}
\usage{
Cumulate(node, attribute, aggFun, cacheAttribute = NULL, ...)
}
\arguments{
\item{node}{The node on which we want to cumulate}

\item{attribute}{determines what is collected. The \code{attribute} can be
\itemize{
  \item a.) the name of a \bold{field} of each \code{Node} in the tree
  \item b.) the name of a \bold{method} of each \code{Node} in the tree
  \item c.) a \bold{function}, whose first argument must be a \code{Node}
 }}

\item{aggFun}{the aggregation function to be applied to the children's \code{attributes}}

\item{cacheAttribute}{A field into which the results should
be cached. Speeds up calculation.}

\item{...}{any arguments to be passed on to attribute (in case it's a function)}
}
\description{
For example, you can sum up values of siblings before
this \code{Node}.
}
\examples{
data(acme)
acme$Do(function(x) Aggregate(x, "cost", sum, "cost"), traversal = "post-order")
acme$Do(function(x) Cumulate(x, "cost", sum, "cumCost"))
print(acme, "cost", "cumCost")
}

