% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{describe,DataFrame,character-method}
\alias{describe}
\alias{describe,DataFrame,ANY-method}
\alias{describe,DataFrame,character-method}
\title{describe}
\usage{
\S4method{describe}{DataFrame,character}(x, col, ...)

\S4method{describe}{DataFrame,ANY}(x)

describe(x, col, ...)
}
\arguments{
\item{x}{A DataFrame to be computed.}

\item{col}{A string of name}

\item{...}{Additional expressions}
}
\value{
A DataFrame
}
\description{
Computes statistics for numeric columns.
If no columns are given, this function computes statistics for all numerical columns.
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
describe(df)
describe(df, "col1")
describe(df, "col1", "col2")
}
}

