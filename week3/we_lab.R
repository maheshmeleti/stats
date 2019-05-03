#1b
bull[1:10,]$YearsPro[bull[1:10,]$YearsPro>=10]

#1c
min(bull[1:15]$BuckOuts14)
which(bull[1:15]$BuckOuts14==1)
bull[c(4,39,51),'Rides14']

# visulize and describe first variable of interest
new_bull <- bull[bull$Events13>0,]
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visulize and describe second variable of interest

hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

#Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

#add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

#Calculate the correlation coefficient
cor(new_bull$Top10_13,new_bull$Rides13)

#Create a correlation matrix
vars <- c('Top10_13','Rides13')
cor(new_bull[,vars])


which(new_bull$Top10_13==2 & new_bull$Rides13==22)

new_bull[4,]

new_bull12 <- bull[bull$Events12>0,]
hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)
mean(new_bull12$Earnings12)

plot(new_bull12$Earnings12,new_bull12$RidePer12)
cor(new_bull12$Earnings12,new_bull12$RidePer12)


plot(new_bull12$CupPoints12,new_bull12$Earnings12)
cor(new_bull12$CupPoints12,new_bull12$Earnings12)

# identify specific case
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,]
cor(nooutlier$Earnings12,nooutlier$RidePer12)
plot(nooutlier$Earnings12,nooutlier$RidePer12)
cor(nooutlier$Earnings12,nooutlier$CupPoints12)

new_bull <- bull[bull$Rides14>0,]
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14
hist(RidesPerEvent14)
min(RidesPerEvent14)
fivenum(RidesPerEvent14)

plot(RidesPerEvent14,new_bull$Rank14)
abline(lm(new_bull$Rank14~RidesPerEvent14))
cor(RidesPerEvent14,new_bull$Rank14)








