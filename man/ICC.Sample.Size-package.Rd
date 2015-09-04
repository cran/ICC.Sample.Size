\name{ICC.Sample.Size-package}
\alias{ICC.Sample.Size-package}
\alias{ICC.Sample.Size}
\docType{package}
\title{
Calculation of Sample Size and Power for ICC
}
\description{
Provides functions to calculate the requisite sample size for studies where ICC is the primary outcome. Can also be used for calculation of power. In both cases it allows the user to test the impact of changing input variables by calculating the outcome for several different values of input variables. Based off the work of Zou. Zou, G. Y. (2012). Sample size formulas for estimating intraclass correlation coefficients with precision and assurance. Statistics in medicine, 31(29), 3972-3981.
}
\details{
\tabular{ll}{
Package: \tab ICC.Sample.Size\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-08-01\cr
License: \tab GPL-3\cr
}

This package provides a sample size and power calculator for ICC based off those derived by Zou (Zou, G. Y. (2012). Sample size formulas for estimating intraclass correlation coefficients with precision and assurance. Statistics in medicine, 31(29), 3972-3981.) It contains the following functions:

\command{calculateIccSampleSize}:
Calculates a sample size for given values of p, the null hypothesis p0, number of raters (k), desired power and alpha. Can also generate sample sizes for different values of p, p0 or combinations of p and p0 from 0-1.

\command{ICC.power}:
Calculates power for given value of p, the null hypothesis p0, number of raters (k), number of comparisons (N) and alpha. Can also be used to calculate the effect of increasing N at given intervals to a maximum N, or to calculate the increase in sample size to obtain increasing power with a given maximum N. 

\command{ICC.achievable.p0}:
Calculates the largest possible null hypothesis that can be tests with given power and alpha for p, the null hypothesis p0, number of raters (k) and number of comparisons (N)
}
\author{
Alasdair Rathbone, Saurabh Shaw, Dinesh Kumbhare

Maintainer: Alasdair Rathbone <alasdair.rathbone@gmail.com>
}
\references{
Zou, G. Y. (2012). Sample size formulas for estimating intraclass correlation coefficients with precision and assurance. Statistics in medicine, 31(29), 3972-3981.
}

\keyword{ package }
\concept{Intraclass Correlation Coefficient}
\concept{ICC}

