% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R
\docType{methods}
\name{distinct,DataFrame-method}
\alias{distinct,DataFrame-method}
\title{Distinct}
\usage{
\S4method{distinct}{DataFrame}(x)
}
\arguments{
\item{x}{A SparkSQL DataFrame}
}
\description{
Return a new DataFrame containing the distinct rows in this DataFrame.
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
distinctDF <- distinct(df)
}
}

