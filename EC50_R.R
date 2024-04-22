#This scipt uses the package "drc". Istall this package:

install.packages("drc", dependencies =TRUE)
#dependencies =TRUE means that "drc" uses other packages
#Problems with installation --> check if your R version is recent enough

#load the "drc" package
library(drc)

#Reading in data
fungi<- read.csv('OF3.csv', sep=';', header=T) 
attach(fungi)

#creating the LL.4 four parameter log-logistic model (DW = dry weight)
#four parameters: relative slope around EC50, EC50, upper limit, and lower limit
fungi.m0<-drm(DW ~ Zn, data = fungi, fct = LL.4(names=c("Slope","Lower Limit","Upper Limit", "EC50")))
summary(fungi.m0)

#The LL.4 model is symmetric around EC50, this is sometimes not the case (reflects in a high Standard error)
#For a not symmetric curve test other 4 parameter models: Weibull 1 and 2
fungi.m1<-drm(DW ~ Zn, data = fungi, fct = W1.4(names=c("Slope","Lower Limit","Upper Limit", "EC50")))
summary(fungi.m1)
fungi.m2<-drm(DW ~ Zn, data = fungi, fct = W2.4(names=c("Slope","Lower Limit","Upper Limit", "EC50")))
summary(fungi.m2)


#a lack-of-fit test, comparing the log-logistic model to more general one-way ANOVA model
#if p > 0.05 it implies that the log-logistic model is just as good a fit as ANOVA-based model
modelFit(fungi.m0)
modelFit(fungi.m1)
modelFit(fungi.m2)


#95% confidence interval of EC50 value
ED(fungi.m0,50,interval="delta")


#Plotting the data
#the dose axis is in the logarthmic scale -> concentration zero not visible
#therefore, "broken=TREU"
plot(fungi.m0, broken=TRUE, type="all", xlab="Concentration (mM)", ylab="Dry Weight (mg)")


detach(fungi)
rm()

