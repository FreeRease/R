exdata1 <- read_excel("sample1.xlsx")

exdata1 %>% select(ID)
exdata1 %>% select(ID, AREA , Y17_CNT)
exdata1 %>% select(-ID)
exdata1 %>% select(-ID, -SEX)

exdata1 %>% filter(AREA == "서울")
exdata2 <- exdata1 %>% filter(AREA == "서울")
exdata2$AMT_SUM <-exdata2$AMT17+exdata2$AMT16

exdata1 %>% filter(AREA == "서울")
exdata1 %>% filter(AREA == "서울" & Y17_CNT >=10)

exdata1 %>% arrange(AGE)
exdata1 %>% arrange(desc(AGE))

exdata1 %>% summarise(TOTAL_Y17_AMT = sum(AMT17))
exdata1 %>% group_by(AREA) %>% summarise(SUM_AMT17 = sum(AMT17)) %>% arrange(SUM_AMT17)
