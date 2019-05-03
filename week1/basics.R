# sample calculations
3+4
2^36
6^2+2
library(SDSFoundations)
bike <- BikeData
head(bike)

#1a
bike[7,'age']

#1b
table(bike[1:10,'cyc_freq'])['Daily']

#1c
bike[(bike$gender=='F' & bike$cyc_freq=='Less than once a month'),][1,]$speed

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)

table(bike$cyc_freq)['Daily']

daily_riders <- bike[bike$cyc_freq=='Daily',]

nrow(daily_riders[daily_riders$gender=='M',])


age <- daily_riders$age
mean(age)

f_d_r = daily_riders[daily_riders$gender=='F',]

mean(f_d_r$age)

m_d_r = daily_riders[daily_riders$gender=='M',]
mean(m_d_r$age)


nrow(m_d_r[m_d_r$age>=30,])

