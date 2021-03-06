% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DataFrame.R, R/generics.R
\docType{methods}
\name{saveAsTable,DataFrame,character,character,character-method}
\alias{saveAsTable}
\alias{saveAsTable,DataFrame,character,character,character-method}
\title{saveAsTable}
\usage{
\S4method{saveAsTable}{DataFrame,character,character,character}(df, tableName,
  source = NULL, mode = "append", ...)

saveAsTable(df, tableName, source, mode, ...)
}
\arguments{
\item{df}{A SparkSQL DataFrame}

\item{tableName}{A name for the table}

\item{source}{A name for external data source}

\item{mode}{One of 'append', 'overwrite', 'error', 'ignore'}
}
\description{
Save the contents of the DataFrame to a data source as a table
}
\details{
The data source is specified by the `source` and a set of options (...).
If `source` is not specified, the default data source configured by
spark.sql.sources.default will be used.

Additionally, mode is used to specify the behavior of the save operation when
data already exists in the data source. There are four modes:
 append: Contents of this DataFrame are expected to be appended to existing data.
 overwrite: Existing data is expected to be overwritten by the contents of
 error: An exception is expected to be thrown.
 ignore: The save operation is expected to not save the contents of the DataFrame
}
\examples{
\dontrun{
sc <- sparkR.init()
sqlContext <- sparkRSQL.init(sc)
path <- "path/to/file.json"
df <- jsonFile(sqlContext, path)
saveAsTable(df, "myfile")
}
}

