animaldata <- AnimalData
animaldata[10,]
colnames(animaldata)
one.b <- animaldata[10,][animaldata$Outcome.Type=="Adoption",]

AnimalData$Age.Intake[AnimalData$Sex=='Female']

#1b
animaldata[1:10,]$Outcome.Type[animaldata[1:10,]$Outcome.Type=='Adoption']

#1c
animaldata$Neutered.Status[animaldata$Intake.Type=='Owner Surrender'][1]

table(animaldata$Outcome.Type)

adopted <- animaldata[animaldata$Outcome.Type=='Adoption',]

daystoadopt <- adopted$Days.Shelter

hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))

(211-mean(daystoadopt))/sd(daystoadopt)
animaldata$Animal.Type[animaldata$Days.Shelter==211]

animaldata$Condition[animaldata$Days.Shelter==211]

#lab

adults <- animaldata[animaldata$Age.Intake>=1,]
nrow(adults)

adult.dogs <- adults[adults$Animal.Type=="Dog",]
nrow(adult.dogs)

adult.cats <- adults[adults$Animal.Type=="Cat",]
nrow(adult.cats)

hist(adult.dogs$Weight)
hist(adult.cats$Weight)

fivenum(adult.dogs$Weight)
mean(adult.cats$Weight)

sd(adult.cats$Weight)

zcat <- (13-mean(adult.cats$Weight))/sd(adult.cats$Weight)
1-pnorm(zcat)

nrow(adult.dogs[adult.dogs$Weight>13,])/nrow(adult.dogs)

mean(adult.cats$Weight)+2*sd(adult.cats$Weight)
mean(adult.cats$Weight)-2*sd(adult.cats$Weight)
median(adult.cats$Weight)

adult.cats[adult.cats$Weight==13,]

#problem set
types <- table(animaldata$Intake.Type[animaldata$Animal.Type=="Dog"])


types["Owner Surrender"]/nrow(animaldata)

retowner <- animaldata[animaldata$Outcome.Type=="Return to Owner",]

nrow(animaldata[animaldata$Outcome.Type=="Return to Owner",])
mean(retowner$Days.Shelter)




