mens800 <- wr[wr$Event=='Mens 800m',]

linFit(mens800$Year,mens800$Record)

wr$Event

summary(wr$Event)
unique(wr$Event)
wr[wr$Athlete=="Usain Bolt",]
wr[wr$Event == 'Womens Mile',][]

menshot <- wr[wr$Event=='Mens Shotput',]
womenshot <- wr[wr$Event == 'Womens Shotput',]

#Create scatter plots
plot(menshot$Year,menshot$Record,main="Mens Shotput World Records",xlab="Year",ylab="World Record Distance(m)",pch=10)
plot(womenshot$Year,womenshot$Record,main="Womens Shotput World Records",xlab="Year",ylab="World Record Distance(m)",pch=10)

linFit(menshot$Year,menshot$Record)
linFit(womenshot$Year,womenshot$Record)

mensmile <- wr[wr$Event=='Mens Mile',]
womensmile <- wr[wr$Event=='Womens Mile',]

plot(mensmile$Year,mensmile$Record)
linFit(mensmile$Year,mensmile$Record)


plot(womensmile$Year,womensmile$Record)
linFit(womensmile$Year,womensmile$Record)

mean(mensmile$Record)

menpv <- wr[wr$Event=='Mens Polevault',]
menpv[menpv$Record>=6.00,]
menpv.1970 <- menpv[menpv$Year>=1970,]
plot(menpv.1970$Year,menpv.1970$Record,pch=10)
linFit(menpv.1970$Year,menpv.1970$Record)





