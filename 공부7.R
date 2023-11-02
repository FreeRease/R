exdata1 <- read_excel("sample2_m_history.xlsx")
exdata2 <- read_excel("sample3_f_history.xlsx")

exdata_bind <- bind_rows(exdata1, exdata2)
View(exdata_bind)

exdata_bind %>% arrange(ID)
View(exdata_bind)

jeju_y17_h <- read_excel("Sample4_y17_history.xlsx")
jeju_y16_h <- read_excel("Sample5_y16_history.xlsx")

bind_left <- left_join(jeju_y17_h, jeju_y16_h, by = "ID")
View(bind_left)

bind_inner <- inner_join(jeju_y17_h, jeju_y16_h, by = "ID")
View(bind_inner)

bind_full <- full_join(jeju_y17_h, jeju_y16_h, by = "ID")
View(bind_full)
bind_full %>% arrange(ID)

x1 <- c(1,3,5,NA,6)
sum(x1)

sum(x1,na.rm = T)
