id<-c(1:6)

sex<-c("F","F","M","F","M","M")

data_ex <-  data.frame(id,sex)

save(data_ex,file = "data_ex.rda")

load("data_ex.rda")

write.csv(data_ex, file = "data_ex.csv")
