% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/SQLContext.R
\name{parquetFile}
\alias{parquetFile}
\title{Create a DataFrame from a Parquet file.}
\usage{
parquetFile(sqlContext, ...)
}
\arguments{
\item{sqlContext}{SQLContext to use}

\item{...}{Path(s) of parquet file(s) to read.}
}
\value{
DataFrame
}
\description{
Loads a Parquet file, returning the result as a DataFrame.
}

