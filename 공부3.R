ID <-c(1:5)

sex<-c("F","M","F","M","F")

data <-data.frame(ID,sex)

View(data)

excel_data_ex <- read_excel("/Users/ijinseong/Downloads/data_ex.xls")
View(excel_data_ex)

id<-c(1:10)
sex<-c("F","M","F","M","M","F","F","F","M","F")
age<-c(50,40,28,50,27,23,56,47,20,38)
area<-c("서울","경기","제주","서울","서울","서울","경기","서울","인천","경기")
data_frame_ex<-table(id,sex,age,area,desparse.level=1)
View(data_frame_ex)

ex_data <- read.table("data_ex.txt")

ex_data1<- read.table("data_ex.txt",header = T)
View(ex_data1)

ex_data2 <- read.table("data_ex.txt",header = T , skip= 2)
View(ex_data2)

ex_data3 <- read.table("data_ex.txt", header = T , nrow= 8)
View(ex_data3)

ex_data4 <- read.table("data_ex1.txt",header = T,sep=",")
View(ex_data4)

varname<-c("AREA","SEX","AGE")
ex_data5 <- read.table("data_ex2.txt", sep=",",col.names = varname)
View(ex_data5)

