exdata1 <-read_excel("sample1.xlsx")

stem(exdata1$AGE)
hist(exdata1$AGE, xlim = c(20, 60), ylim = c(0,5), main = "AGE 분포")
exdata_sex <- table(exdata1$SEX)
barplot(exdata_sex)
barplot(exdata_sex, ylim = c(0, 8), main = "about sex", ylab = "Frequency", xlab = "SEX", col = c("pink","navy"))

boxplot(exdata1$Y17_CNT, exdata1$Y16_CNT,xlab="CNT", ylim = c(0,60),names=c("Y17_CNT", "Y16_CNT"))
