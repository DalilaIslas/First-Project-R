library(ggplot2)
library(reshape2)
library(plyr)


sizes <- read.csv(file = "./dataset.csv")

#str is short for structure(). It reports what's in the data frame.
str(sizes)
plot(x = sizes$Height, y = sizes$Weight)

linearModel <- lm(Weight ~ Height, data= sizes)
summary(linearModel)

male <- subset(sizes, Gender =="male")
female <- subset(sizes, Gender =="female")
summary(male$Height)
summary(female$Height)

plot(density(male$Height))
plot(density(female$Height))

ggplot(data = sizes, aes(x=Height)) + geom_density()


ggplot(sizes, aes(x= Height, color= Gender)) + geom_density() 

ggplot(sizes, aes(x= Height, y= Weight, color = Gender)) + geom_point() 
