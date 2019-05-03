mean(AnimalData$Age.Intake)
median(AnimalData$Age.Intake)

sd(AnimalData$Age.Intake)
fivenum(AnimalData$Age.Intake)

head(AnimalData)
table(AnimalData$Sex)
plot(AnimalData$Sex,main="Bar chart of Animal Genders",xlab='Animal Gender',
     ylab="frequency")

hist(AnimalData$Age.Intake,main="histogram of Intake Ages",xlab="Age at Intake")

femaleage <- AnimalData$Age.Intake[AnimalData$Sex=='Female']
maleage <- AnimalData$Age.Intake[AnimalData$Sex=="Male"]

hist(femaleage,main="Histogram of Female Ages",xlab="Age at intake of female Animals")
hist(maleage,main="Histogram of Male Ages",xlab="Age at intake of male Animals",breaks = 15)

max(maleage)
max(femaleage)

which(AnimalData$Age.Intake==17)
AnimalData[415,]

