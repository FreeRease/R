install.packages("reshape2")
library("reshape2")

str(airquality)
head(airquality)

names(airquality)<-tolower(names(airquality))

melt_test <- melt(airquality)
head(melt_test)

melt_test2 <- melt(airquality, id.vars = c("month","wind"), measure.vars = "ozone")

airquality1 <- airquality
names(airquality1) <- tolower(names(airquality1))

