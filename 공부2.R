x <- c(1,2,3,4,5,6)
x

matrix(x,nrow = 2,ncol = 3,byrow = T)
matrix(x,nrow = 3,ncol = 2,byrow = T)

y<-c(1:6)
array(y,dim = c(2,3,4))

list1 <- list(c(1:3), "hello")

Id<-c(1:10)
sex<-c("F","M","F","M","M","F","F","F","M","F")
age<-c(50,40,20,50,27,23,56,47,20,38)
area<-c("서울","경기","제주","서울","서울","서울","서울","경기","서울","인천")
as.integer(Id)

data_frame_ex<-data.frame(10,sex,age,area)
View(data_frame_ex)
