gbr <- world[world$Country.Code == 'GBR',]
gbr2000 <- gbr[gbr$year >= 2000 & gbr$year<2010,]

time <- gbr2000$year - 2000

mv <- gbr2000$motor.vehicles

plot(time,mv)

expFit(time,mv)
logisticFit(time,mv)

tripleFit(time,mv)

expFitPred(time,mv,12)
logisticFitPred(time,mv,12)

#pre lab
world[world$Country == "Australia",][,c("mobile.users","year")]

us <- world[world$Country.Code=="USA",]
us_select <- us[us$year>=1990,]
us_select$internet.mill <- us_select$internet.users/100000
us_select$time <- us_select$year-1990
us_select_10 <- us_select[us_select$time<10,]

plot(us_select_10$time,us_select_10$internet.mill)

expFit(us_select_10$time,us_select_10$internet.mill)
logisticFit(us_select_10$time,us_select_10$internet.mill)

e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

#lab

denmark <- world[world$Country=="Denmark",]
denmark$proportion = denmark$internet.users/denmark$population
denmark.1990 <- denmark[denmark$year>=1990,]
denmark.1990$year.since.1990 <- denmark.1990$year-1990

plot(denmark.1990$year.since.1990,denmark.1990$proportion)
expFit(denmark.1990$year.since.1990,denmark.1990$proportion)
logisticFit(denmark.1990$year.since.1990,denmark.1990$proportion)

# Problem set
brazil <- world[world$Country=="Brazil" & world$year>=1995,]
brazil$years.since.1995 <- brazil$year-1995
brazil$mobile.users <- brazil$mobile.users/1000000
brazil[brazil$year==2000,]$mobile.users
brazil[brazil$mobile.users>100,]$year
plot(brazil$years.since.1995,brazil$mobile.users)
abline(brazil$mobile.users,brazil$years.since.1995)
tripleFit(brazil$years.since.1995,brazil$mobile.users)
val <- logisticFitPred(brazil$years.since.1995,brazil$mobile.users,2025)
val



