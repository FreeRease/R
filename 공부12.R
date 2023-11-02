airquality
names(airquality) <- tolower(names(airquality))

aq_melt <- melt(airquality,id.vars = c("month","day"), na.rm = T)
aq_cast <-dcast(aq_melt,month+day ~ variable)

acast(aq_melt, month ~ variable, mean)
acast_mean <- acast(aq_melt, day ~ variable, mean)
View(acast_mean)

dcast_mean <- dcast(aq_melt, month ~ variable, mean)
View(dcast_mean)

may <- subset(airquality,subset = month ==5)
may2 <- melt(may, id.vars = c("month","day"), na.rm = T)
View(may2)

may_dcast <- dcast(may2, day ~ variable,mean)
View(may_dcast)
may_acast <- acast(may2, day ~ variable, mean)
View(may_acast)
