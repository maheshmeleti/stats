install.packages("ISLR") # installing packages
library(ISLR) # accessing package

data = data(package='ISLR') # a) loading islr package
auto_data=as.data.frame(Auto)

head(auto_data)

median_mpg = median(auto_data$mpg) # b) finding median of mpg
median_mpg

auto_data$mpglevel <- 0

auto_data$mpglevel[auto_data$mpg>median_mpg] <- 1 # c) making 1 if greater than median

head(auto_data[auto_data$mpg>median_mpg,])
head(auto_data[auto_data$mpg<median_mpg,])

names(auto_data) # d) veriying with names()

# e) creating test and train data
sample_size <- floor(0.75 * nrow(auto_data)) # choosing 75%
set.seed(1234)
train_ind = sample(seq_len(nrow(auto_data)),size = sample_size)

train_data = train = auto_data[train_ind,]
test_data = auto_data[-train_ind,]

par(mfrow=c(2,2))

plot(auto_data$mpg,auto_data$horsepower,col=(auto_data$mpglevel))

plot(auto_data$mpg,auto_data$weight,col=(auto_data$mpglevel))

x = factor(auto_data$horsepower)
cdplot(x~auto_data$mpg,col=c('red', 'black'))

y = factor(auto_data$weight)
cdplot(y~auto_data$mpg,col=c('red','black'))

