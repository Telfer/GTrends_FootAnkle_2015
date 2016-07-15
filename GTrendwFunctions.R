#For individual times series, this set of functions needs to-
#1)Combine to NH data and plot stl and periogram for each time series
#2)Perform Kendall test to test for trend
#3)Perform tbats to test for seasonality
#4)Perform Wilcoxon signed rank test to check for summer/winter differences

#For combined time series, this set of functions needs to-
#1) Plot pretty graph

#Load packages
library(ggplot2)
library(plyr)
library(reshape2)
library(zoo)
library(forecast)
library(Kendall)
library(TSA)
library(season)

#Functions
movingAverage <- function(x, n=1, centered=FALSE) {
  if (centered) {
    before <- floor  ((n-1)/2)
    after  <- ceiling((n-1)/2)
  } else {
    before <- n-1
    after  <- 0
  }
  s     <- rep(0, length(x))
  count <- rep(0, length(x))
  new <- x 
  count <- count + !is.na(new)
  new[is.na(new)] <- 0
  s <- s + new
  i <- 1
  while (i <= before) {
    new   <- c(rep(NA, i), x[1:(length(x)-i)])
    count <- count + !is.na(new)
    new[is.na(new)] <- 0
    s <- s + new
    i <- i+1
  }
  i <- 1
  while (i <= after) {
    new   <- c(x[(i+1):length(x)], rep(NA, i))
    count <- count + !is.na(new)
    new[is.na(new)] <- 0
    s <- s + new
    i <- i+1
  }
  s/count
}

Formatdata <- function (x,y,cutpoint) {
  Name <- as.character(y)
  x <- rename(x, c(V1="Date",V2=y))
  cut <- grep("subregion", x[,1])
  x <- x[6:(cut-4),]
  x[,1] <- substr(x[1:length(x[,1]),1],14,23)
  x[,2] <- as.numeric(as.character(x[,2]))
  x[,1] <- as.factor(x[,1])
  x <- x[(cutpoint-5):length(x[,1]),]
  x[,2] <- (100 / mean(x[,2])) * x[,2] # Normalise to 100
  return(x)
}

#Weighting factors
UK_weighting3=0.1615
US_weighting3=0.7518
CAN_weighting3=0.0866
UK_weighting2=0.1769
US_weighting2=0.8231

CombineNH <- function(UK,US,CAN,name) {
  x=merge(UK,US,by="Date",all=TRUE)
  x=merge(x,CAN,by="Date",all=TRUE)
  for (i in 1:nrow(x)){
    if(length(which(is.na(x[i,]))) == 1) {
      x[i,3]=x[i,3]*US_weighting2
      x[i,2]=x[i,2]*UK_weighting2
    }
  }
  for (i in (1:nrow(x))) {
    if (length(which(is.na(x[i,])))==0) {
      x[i,3]=x[i,3] * US_weighting3
      x[i,2]=x[i,2] * UK_weighting3
      x[i,4]=x[i,4] * CAN_weighting3
    }
  }
  
  x[,2] <- rowSums(x[,2:4],na.rm=TRUE)
  x[,3] <- NULL
  x[,3] <- NULL
  names=c("Date",name)
  colnames(x) <- names
  return(x)
}


decomp <- function(x,frequency){
  ts(x[,2],start=01,freq=frequency) -> x1 #converting into a ts object
  stl(x1,s.window="periodic") -> x2 #performing stl on the ts object
  data.frame(x[,2],x2$time.series) -> x3 #creating a data.frame
  index(x3) -> x3$index #create an id
  colnames(x3)[1] <- "time-series" 
  melt(x3,id.vars="index") -> x4   #melt the dataframe into long format 
  breaks=seq(to=length(x[,2]),by=52, length=(floor(length(x[,2])/52))+1)
  labels=as.character(seq(to=2015, by=1, length=(floor(length(x[,2])/52))+1))
  ggplot(x4,aes(index,value,group=variable)) + geom_line() +
  facet_grid(variable ~., scales="free")  +   
  theme(strip.text.y = element_text(size = 12), 
        axis.text.y = element_text(size = 12),
        axis.text.x = element_text(size = 11)
        ) +
  scale_x_continuous(breaks=breaks,labels=labels) + xlab("") + ylab("")
}

perio <-function(x,frequency){
  x1 = ts(x[,2],start=01,freq=frequency)
  z1=peri(x1, plot=FALSE)
  z2=data.frame(z1$c,z1$amp)
  z2[,3]=rep("Periodogram", length.out=length(z2[,2]))
  theme_set(theme_bw(base_size = 20))
  z = ggplot(z2, aes(x=z1.c,y=z1.amp, ymin=0, ymax=z1.amp))
#  z = z + geom_segment(aes(x=52,y=0,xend=52, yend=17),alpha=0.3,
#                       size=3,colour="red")
  z = z + geom_linerange(size=1)# + theme_bw() 
  z = z + xlab("Period (weeks)") + ylab("") + facet_grid(V3~.)
  z = z + theme(strip.text.y = element_text(size = 18),
                axis.text.x = element_text(size = 18),
                axis.text.y = element_text(size = 18))
  z
}

CompSumWin <- function(x) {
  s=c()
  w=c()
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2005-06-01") 
                          & as.Date(x[,1]) <= as.Date("2005-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2006-06-01") 
                          & as.Date(x[,1]) <= as.Date("2006-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2007-06-01") 
                          & as.Date(x[,1]) <= as.Date("2007-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2008-06-01") 
                          & as.Date(x[,1]) <= as.Date("2008-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2009-06-01") 
                          & as.Date(x[,1]) <= as.Date("2009-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2010-06-01") 
                          & as.Date(x[,1]) <= as.Date("2010-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2011-06-01") 
                          & as.Date(x[,1]) <= as.Date("2011-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2012-06-01") 
                          & as.Date(x[,1]) <= as.Date("2012-08-31")))))
  s=append(s,(mean(subset(x[,2],as.Date(x[,1]) >= as.Date("2013-06-01") 
                          & as.Date(x[,1]) <= as.Date("2013-08-31")))))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2005-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2005-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2006-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2006-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2006-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2006-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2007-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2007-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2007-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2007-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2008-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2008-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2008-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2008-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2009-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2009-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2009-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2009-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2010-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2010-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2010-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2010-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2011-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2011-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2011-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2011-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2012-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2012-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2012-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2012-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2013-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2013-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  a=subset(x[,2],as.Date(x[,1]) >= as.Date("2013-12-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2013-12-31","%Y-%m-%d"))
  b=subset(x[,2],as.Date(x[,1]) >= as.Date("2014-01-01","%Y-%m-%d") 
           & as.Date(x[,1]) <= as.Date("2014-02-31","%Y-%m-%d"))
  a=append(a,b)
  w=append(w,mean(a))
  z1=wilcox.test(s,w,paired=TRUE,conf.int=TRUE,conf.level=0.95)
  z2=summary(s)
  z3=summary(w)
  y=list("wtest"=z1,"summer_mean"=z2,"winter_mean"=z3)
  return(y)
}

kendall_test=function(x) {
  z=ts(x[,2], start=1, freq=365.25/7)
  y=MannKendall(z)
  return(y)
}

Seasonality_test <- function(x) {
  z=ts(x[,2], start=1, freq=365.25/7)
  y=tbats(z)
  y=!is.null(y$seasonal)
  return(y)
}

