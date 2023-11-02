install.packages("reshape2")
library("reshape2")

str(airquality)
head(airquality)

names(airquality)<-tolower(names(airquality))

airquality2 <- subset(airquality,subset = month == 5)

max_wind_5 <- airquality2[which.max(airquality2$wind),]
View(max_wind_5)

min_air_5 <- airquality2[which.min(airquality2$wind),]
View(min_air_5)

min_max <- full_join(min_air_5,max_wind_5)
View(min_max)

median_air <- airquality2[which(airquality2$wind==median(airquality2$wind)),]
median_air <- median_air[-which(duplicated(median_air$wind)),]
View(median_air)

min_max_median <- full_join(min_max,median_air)
View(min_max_median)
