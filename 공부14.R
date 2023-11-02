install.packages("ggplot2")
library("ggplot2")

ggplot(airquality, aes(x= Day, y= Temp)) + geom_point(size=2, color = "green")

ggplot(airquality, aes(x=Day, y=Temp)) + 
  geom_line(linewidth=1, color="green") + 
  geom_point(size=1,color="green")

ggplot(airquality, aes(x=Day, y=Temp, group=Day)) + geom_boxplot()

ggplot(airquality, aes(x=Temp)) + geom_histogram(binwidth=1)

ggplot(mtcars, aes(x=cyl)) + geom_bar(width=0.5)
ggplot(mtcars, aes(x =factor(cyl))) +geom_bar(width = 0.5)

ggplot(mtcars, aes(x =factor(cyl))) + geom_bar(aes(fill = factor(gear))) + 
  coord_polar()

economics
ggplot(economics, aes(x = date, y=psavert)) + geom_line()

lm(psavert ~ date, data = economics)

ggplot(economics, aes(x = date, y=psavert)) + geom_line() + 
  geom_abline(intercept = 12.4117258, slope = -0.0004925)

mean(economics$psavert)
