plot(bull$YearsPro,bull$BuckOuts,xlab="Years Pro",ylab="Buckouts",main="Plot of years Vs Buckouts")
abline(lm(bull$BuckOuts~bull$YearsPro))

plot(bull$Events,bull$BuckOuts,xlab="No of events",ylab="Buckouts",main="plot of #events Vs Buckouts")
abline(lm(bull$BuckOuts~bull$Events))

cor(bull$YearsPro,bull$BuckOuts)
cor(bull$Events,bull$BuckOuts)

myvars <- c('YearsPro','Events','BuckOuts')
cor(bull[,myvars])
