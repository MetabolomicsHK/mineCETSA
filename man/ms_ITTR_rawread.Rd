% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ms_ITTR_rawread.R
\name{ms_ITTR_rawread}
\alias{ms_ITTR_rawread}
\title{ms_ITTR_rawread}
\usage{
ms_ITTR_rawread(
  filevector,
  fchoose = FALSE,
  time = c(0, 10, 20, 30, 45, 60, 90, 120, 150, 180),
  nread = 10,
  abdread = TRUE,
  PDversion = 21,
  refchannel = "126",
  channels = NULL
)
}
\arguments{
\item{filevector}{a file name or a vector of filenems to import}

\item{fchoose}{whether to choose file interactively, default set to FALSE}

\item{time}{a vector of times of treatments applied to ITTR samples, in the same order as channels}

\item{nread}{number of reading channels, should match the number of channels used, default value 10}

\item{abdread}{whether to read in protein abundance data, default set to TRUE}

\item{PDversion}{which version of Proteome Discoverer the data is searched, possible values 20,21,22,24}

\item{refchannel}{names of reference channel used in Proteome Discoverer search, default value 126}

\item{channels}{names of the read-in channels, default value NULL, it would automatically
match the provided channel number when it is 10 or 11}
}
\value{
a dataframe
}
\description{
Function to parse and read in ITTR data from tab delimited files exported from Proteome Discoverer
}
\examples{
\dontrun{
 ITTRdata <- ms_ITTR_rawread(c("file1.txt", "file2.txt", "file3.txt", "file4.txt"), PDversion=21,
 time=c(0,5,10,15,20,30,45,60,90,120))
}



}
\seealso{
\code{\link{ms_ITDR_rawread}} for dose response data
}
