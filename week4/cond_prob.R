gtab <- table(acl$Grammy)
prop.table(gtab)

gtab2 <- table(acl$Grammy,acl$Gender)
gtab2

prop.table(gtab2,1)
prop.table(gtab2,2)

barplot(gtab,main='ACL Grammy Winners',xlab='Grammy Winner',ylab='Counts')

barplot(gtab2,legend=T,main='Gender by Granny Winner',ylab='Counts',xlab='Gender',
        beside = T)
barplot(prop.table(gtab2,2),legend=T,beside = T)

#pre-lab
acl$Artist
table(acl$Artist)
acl[1:10][acl[1:10]$Grammy==T,]$Grammy

acl[1:10,][acl[1:10,]$Grammy=='Y',]$Grammy
female.artists <- acl[acl$Gender=='F',]
female.artists[female.artists$Age>60,][1,]$Genre

older <- acl[acl$Age>=30,]
genre <- table(older$Genre)
genre

twoway<- table(older$Gender,older$Genre)
twoway

#Visualize the counts
barplot(twoway,legend=T,beside=T,main='older_singers genre and gender counts')

#Calculate P(A): the probability of each genre being played
prop.table(genre)

#Calculate P(A/B): the probability of each genre played, given the artist gender
prop.table(twoway,1)

older.male <- older[older$Gender=='M',]
nrow(older.male)

older.female <- older[older$Gender=='F',]
nrow(older.female)

gender.grammy <- table(acl$Gender,acl$Grammy)

genere.grammy <- table(acl$Genre,acl$Grammy)

grammy <- table(acl$Grammy)
prop.table(grammy)

male <- acl[acl$Gender=='M',]
m.grammy.genere <- table(male$Genre,male$Grammy)

r=prop.table(m.grammy.genere,1)
grammy.winners <- acl[acl$Grammy=='Y',]
plot(grammy.winners$Genre)
barplot(table(grammy.winners$Genre),beside = T,main = "plot")

fb.likes <- acl[acl$Facebook.100k==1,]
hist(fb.likes$Age.Group)
age.fb.likes <- table(fb.likes$Age.Group)
ageg.likes <- table(acl$Age.Group,acl$Facebook.100k)
prop.table(ageg.likes,1)




