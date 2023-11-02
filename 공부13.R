mtcars
names(mtcars) <- toupper(names(mtcars))
mtcars_data <- filter(mtcars, CYL == 4 | MPG > 22)
View(mtcars_data)

arrange(mtcars, desc(HP))
arrange(mtcars, desc(HP), desc(WT))

select(mtcars, CYL, MPG, WT)

mutate(mtcars, years = "1974")
mtcars <- mutate(mtcars, years = "1974", MPG_rank = rank(MPG))
mtcars <- arrange(mtcars, desc(MPG))
View(mtcars)

distinct(mtcars, CYL)
distinct(mtcars, GEAR)
distinct(mtcars, CYL, GEAR)

summarise(mtcars, cyl_mean = mean(CYL), cyl_min = min(CYL), cyl_max = max(CYL))
gr_cyl <- group_by(mtcars, CYL)
View(gr_cyl)

summarise(gr_cyl, n())
summarise(gr_cyl, n(), n_distinct(GEAR))

sample_n(mtcars, 10)
sample_frac(mtcars, 0.2)

group_by(mtcars, CYL) %>% summarise(n())

mtcars %>% group_by(CYL) %>% summarise(n())
