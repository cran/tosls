\name{tosls-package}
\alias{tosls-package}
\alias{tosls}
\docType{package}
\title{
What the package does (short line)
~~ package title ~~
}
\description{
More about what it does (maybe more than one line)
~~ A concise (1-5 lines) description of the package ~~
}
\details{
\tabular{ll}{
Package: \tab tosls\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-03-31\cr
License: \tab Artistic-2.0\cr
}
Tosls(y~x|h,data=data) Instrumental Variables Two Stage Least Squares estimation computes instrumental variables 2SLS estimation where y is the vector of the dependant variable, y is the matrix of the independent variables, h is the matrix of instruments
}
\author{
Zaghdoudi Taha

Zaghdoudi Taha <zedtaha@gmail.com>
}

\examples{
#Create some data 
pib<-as.matrix(c(12,3,4,0.4,0.7,5,0.7,0.3,0.6,89,7,8,45,7,4,5,0.5,5),nrows=18,ncols=1)
tir<-as.matrix(c(12,0.3,4,0.4,7,12,3.0,6.0,45,7.0,0.8,44,65,23,4,6,76,9),nrows=18,ncols=1)
inf<-as.matrix(c(1.2,3.6,44,1.4,0.78,54,0.34,0.66,12,0.7,8.0,12,65,43,5,76,65,8),nrows=18,ncols=1)
npl<-as.matrix(c(0.2,3.8,14,2.4,1.7,43,0.2,0.5,23,7.8,88,36,65,3,44,65,7,34),nrows=18,ncols=1)
# create a data frame 
mdata<-data.frame(p=pib,t=tir,int=inf,np=npl)
# fit the ivfixed function   
ivs<-Tosls(t~p+int|p+np,mdata)
summary(ivs)
}
