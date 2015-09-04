\name{calculateIccPower}
\alias{calculateIccPower}
\title{
Function to calculate post-hoc power for ICC studies
}
\description{
Calculates a post-hoc power for an ICC study. Given the study parameters can also demonstrate the additional power gained by increasing number of subjects or the number of subjects needed to be added to increase power. 
}
\usage{
calculateIccPower(p,p0,k,alpha,tails,N,by,desiredPower,maxN,step)
}
\arguments{
  \item{p}{
  The intraclass correlation coefficient obtained in the study. No default.
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
  \item{N}{
  The number of subjects in the study. No default
  }
  \item{by}{
  Can be used to calculate sample sizes for varied p and/or p0.
  
  If \code{by=""} Only the post-hoc power will be calculated.
  
  If \code{by="N"} Increases N by step and calculates new power for each larger N until either maximum N or desired power is reached.
  
  If \code{by="power"} Increase power by step and calculates requisite sample size for each larger power until either maximum N or desired power is reached.
  
  If missing, default is \code{""}. 
  }
  \item{desiredPower}{
  The desired power of the study. If calculated desired power is reached then function will cease to increase N or power by steps and return result. If missing default is 0.80.
  }
  \item{maxN}{
  The maximum N to increase sample size to when testing the effect on increasing sample size on power or the requisite increase in sample size for increasing power. If maxN is reached then function will cease to increase N or power by steps and return result. If missing default is 10 times the N of the study.
  }
  \item{step}{
  When the function varies N or power it calculates power or sample size respectively for N or power, then for 0+\code{step*(i-1)} where \code{i} is the number of repeats, until MaxN or desired power is reached.
  }
}
\value{
  Returns a list with the following items:
  \item{parameters}{
  Dataframe with columns p,p0,k,alpha,tails,N,power.
  }
  \item{NPower}{
  Dataframe with a list of N's and powers calculated. Provided when by="N" or by"power".
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
##Calculate post-hoc power for p=0.80, p0=0.60, k=2, alpha=0.05, tails=2 and N of 30.
calculateIccPower(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,N=30)
##Calculate post-hoc power for p=0.80, p0=0.60, k=2, alpha=0.05, tails=2 and N of 30.
##Test effect on power of increasing sample size in steps of 1 up until a maximum of 50
##with a desired power of 0.80.
calculateIccPower(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,N=30, by="N",desiredPower=0.80,maxN=50)
##alculate post-hoc power for p=0.80, p0=0.60, k=2, alpha=0.05, tails=2 and N of 30.
##Calculate the sample size need to increase power by
##steps of 0.05 up until a maximum sample size of 50 with a desired power of 0.80.
calculateIccPower(p=0.80,p0=0.60,k=2,alpha=0.05,tails=2,N=30, by="power",desiredPower=0.80,maxN=50)
}
\concept{Intraclass Correlation Coefficient}
\concept{ICC}

