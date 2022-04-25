----------------------
#Required Libraries

library(qcc)

-------------------------------------------------------------------------------------------

data=read.table(file.choose(), header = TRUE)#Read data from n rows and two columns
data
attach(data)

Thickness <- qcc.groups(Thickness, Sample)

qcc(Thickness, type="R",title="",xlab="Sample", ylab="Range")
Thickness_1<-Thickness[-15,]

qcc(Thickness_1, type="R",title="",xlab="Sample", ylab="Range")
qcc(Thickness_1, type="xbar",title="",ylab="Mean Thickness",xlab="Sample")

espesor2<-Thickness_1[-c(14,21),]

qcc(Thickness_2, type="xbar",title=" ",ylab="Mean Thickness",xlab="Sample")
qcc(Thickness_2, type="R",title=" ",xlab="Sample", ylab="Range")
-------------------------------------------------------------------------------------------
