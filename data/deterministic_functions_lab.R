install.packages("here")
require("here")
here()
setwd("C:/Users/avery/Documents/GitHub/Eco_602_2020/data/")
here("C:/Users/avery/Documents/GitHub/Eco_602_2020/data/")
read.csv("C:/Users/avery/Documents/GitHub/Eco_602_2020/data/hab.sta.csv")
file.exists(here("hab.sta.csv", "C:/Users/avery/Documents/GitHub/Eco_602_2020/data/hab.sta.csv"))
read.csv("hab.sta.csv")
dat_habitat<- c((read.csv("hab.sta.csv")))
dat_habitat<-read.csv("hab.sta.csv")
dat_habitat
str(dat_habitat)

elevation <-dat_habitat$elev #elevation
hist(elevation) #histogram of elevation

slope <-dat_habitat$slope #slope
hist(slope) #histogram of slope

aspect <-dat_habitat$aspect #aspect
hist(aspect) #histogram of aspect

a<-dat_habitat$elev #designating first x variable
b<-dat_habitat$slope #designating second x variable
c<-dat_habitat$aspect #designating third x variable
y<-dat_habitat$ba.tot #designating y variable

plot(a, y, main = "Elevation Plot", xlab = "Elevation", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y
abline(lm(y~a, data=dat_habitat), col="red") 
#add regression line

plot(b, y, main = "Slope Plot", xlab = "Slope", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y
abline(lm(y~b, data=dat_habitat), col="red") 
#add regression line

plot(c, y, main = "Aspect Plot", xlab = "Aspect", ylab = "Basal Area of Trees", pch=19, frame=FALSE)
#scatterplot of a against y
abline(lm(y~c, data=dat_habitat), col="red") 
#add regression line

