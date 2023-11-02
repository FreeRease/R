install.packages("readxl")
library(readxl)

exdata1<-read_excel("sample1.xlsx")

View(exdata1)
str(exdata1)
dim(exdata1)
ls(exdata1)

install.packages("dplyr")
library(dplyr)

exdata1 <- rename(exdata1, Y17_AMT = AMT17, Y16_AMT = AMT16)
exdata1$AMT <- exdata1$Y17_AMT + exdata1$Y16_AMT
exdata1$CNT <- exdata1$Y17_CNT + exdata1$Y16_CNT
exdata1$AVG_AMT <- exdata1$AMT / exdata1$CNT
exdata1$AGE50_YN <-ifelse(exdata1$AGE >= 50 , "A1.50++", 
                          ifelse(exdata1$AGE >= 40, "A2.4049",
                                 ifelse(exdata1$AGE >= 30, "A3.3039",
                                        ifelse(exdata1 >= 20, "A4.2029", "A5.1019"))))
