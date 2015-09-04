\name{calculateIccSampleSize}
\alias{calculateIccSampleSize}

\title{
Function to calculate sample size required for studies where ICC is primary outcome.
}

\description{
Calculates a sample size for given values of p, the null hypothesis p0, number of ratings (k), desired power and alpha. Can also generate sample sizes for different values of p, p0 or combinations of p and p0 from 0-1.
}

\usage{
calculateIccSampleSize(p,p0,k,alpha,tails,power,by,step)
}

\arguments{
  \item{p}{
  The hypothesized value of p. Hypothesized based on previous data, or experience. If missing default is 0.
  }
  \item{p0}{
  The null hypothesis value of p. If missing default is 0.
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
  \item{by}{
  Can be used to calculate sample sizes for varied p and/or p0.
  
  If \code{by=""} Only the sample size for the specified p and p0 will be calculated.
  
  If \code{by="p"} Calculates sample sizes for all p starting from 0, increasing by \code{step} until 1.
  
  If \code{by="p0"} Calculates sample sizes for all p0 starting from 0, increasing by \code{step} until 1.
  
  If \code{by="both"} Calculates sample sizes for all combinations of p and p0 starting each from 0, increasing by \code{step} until 1. Row labels are p and column labels are p0.
  
  If missing, default is \code{""}. 
  }
  \item{step}{
  When the function varies p or p0 it calculates sample size for 0, then for 0+\code{step*(i-1)} where \code{i} is the number of repeats, until \code{p=1}
  }
}

\value{
  Returns a list with the following items:
  \item{resultdf}{
  Data frame with columns N, p, p0, k, alpha, tails, and power.
  }
  \item{sampleSize}{
  For \code{by="p"} or \code{by="p0"} is a data frame with columns of p or p0 respectively and N.
  }
  \item{nDataframe}{
  For \code{by="both"} is a data frame with rows defined by p and columns defined by p0 representing values of N for each combination.
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
## Calculate Sample Size for p=0.80, p0=0.60, two ratings, alpha=0.05 with two tails and power=0.80.
calculateIccSampleSize(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,power=0.80)
## Calculate Sample Size as above, but test varying p from 0 to 1 by steps of 0.05
calculateIccSampleSize(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,power=0.80,by="p",step=0.05)
## Calculate Sample Size as above, but test varying p0 from 0 to 1 by steps of 0.05
calculateIccSampleSize(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,power=0.80,by="p0",step=0.05)
## Calculate Sample Size as above, but test varying both p and p0 from 0 to 1 by steps of 0.05
calculateIccSampleSize(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,power=0.80,by="both",step=0.05)
}
\concept{Intraclass Correlation Coefficient}
\concept{ICC}