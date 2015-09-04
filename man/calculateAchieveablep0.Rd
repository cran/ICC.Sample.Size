\name{calculateAchievablep0}
\alias{calculateAchievablep0}

\title{
Function to calculate largest p0 that the data are powered to test
}
\description{
This function when given the parameters of a study to measure an ICC calculates what is the largest p0 that can be tested for at the specified power, alpha and number of tails.
}
\usage{
calculateAchievablep0(p,k,alpha,tails,power,N)
}

\arguments{
  \item{p}{
  The intraclass correlation coefficient obtained in the study. No default.
  }
  \item{k}{
  The number of ratings of each subject. If missing default is 2.
  }
  \item{alpha}{
  The desired alpha for hypothesis testing. If missing default is 0.05.
  }
  \item{tails}{
  The number of trails for hypothesis test. If missing default is 2.
  }
  \item{power}{
  The desired power of the hypothesis test. If missing default is 0.80.
  }
  \item{N}{
  The number of subjects in the study. No default
  }
}

\value{
  Returns a list with the following items:
  \item{resultFrame}{
  A data frame consisting of columns p0,N,p,k,alpha,tails and power.
  }
}
\references{
Zou, G. Y. (2012). Sample size formulas for estimating intraclass correlation coefficients with precision and assurance. Statistics in medicine, 31(29), 3972-3981.
}
\author{
Alasdair Rathbone, Saurabh Shaw, Dinesh Kumbhare

Maintainer: Alasdair Rathbone <alasdair.rathbone@gmail.com>
}

\examples{
##Calculate achieveable p0 for a given study with p=0.80,k=2,alpha=0.05,tails=2,power=0.80,N=30
calculateAchievablep0(p=0.80,k=2,alpha=0.05,tails=2,power=0.80,N=30)
}
\concept{Intraclass Correlation Coefficient}
\concept{ICC}
