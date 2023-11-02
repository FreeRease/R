x1 <- c(1,2,3,4,5,6,7,8,9,10,100)
x1

summary(x1)

library(psych)

describe(x1)
x2 <- c(1,2,3,4,5,6,100)
quantile(x2)

var(x2)

sd(x2)

install.packages("descr")
library("descr")

exdata1 <- read_excel("sample1.xlsx")
freq_data <- freq(exdata1$AREA, plot = T)
par(family="AppleGothic")
