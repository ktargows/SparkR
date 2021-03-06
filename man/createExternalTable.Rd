% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/SQLContext.R
\name{createExternalTable}
\alias{createExternalTable}
\title{Create an external table}
\usage{
createExternalTable(sqlContext, tableName, path = NULL, source = NULL, ...)
}
\arguments{
\item{sqlContext}{SQLContext to use}

\item{tableName}{A name of the table}

\item{path}{The path of files to load}

\item{source}{the name of external data source}
}
\value{
DataFrame
}
\description{
Creates an external table based on the dataset in a data source,
Returns the DataFrame associated with the external table.
}
\details{
The data source is specified by the `source` and a set of options(...).
If `source` is not specified, the default data source configured by
"spark.sql.sources.default" will be used.
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
df <- sparkRSQL.createExternalTable(sqlContext, "myjson", path="path/to/json", source="json")
}
}

