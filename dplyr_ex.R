library(dplyr)

result1 <- filter(mtcars, cyl == 4)
View(result1)

result2 <- filter(mtcars, cyl >= 4 & mpg > 20)
View(result2)

result3 <- arrange(mtcars, wt)
View(result3)

result4 <- arrange(mtcars, desc(wt))
View(result4)

result5 <- arrange(mtcars, mpg, desc(wt))
View(result5)

result6 <- select(mtcars, am)
View(result6)

result7 <- select(mtcars, mpg, hp, disp)
View(result7)

result8 <- select(mtcars, -am)
View(result8)

result9 <- mutate(mtcars, years = "1974")
View(result9)

result10 <- mutate(mtcars, level = ifelse(mpg > 20, "good", "normal"))
View(result10)

result11 <- distinct(mtcars, cyl)
View(result11)

result12 <- distinct(mtcars, am, cyl)
View(result12)

result13 <- summarise(mtcars, cyl_mean = mean(cyl), cyl_min = min(cyl), cyl_max = max(cyl), hp_median = median(hp), hp_sum = sum(hp))
View(result13)

grp_cyl <- group_by(mtcars, cyl)
View(grp_cyl)
result14 <- summarise(grp_cyl, mean(mpg))
View(result14)

sample1 <- sample_n(mtcars, 10)
View(sample1)
sample2 <- sample_n(mtcars, 10)
View(sample2)

sample3 <- sample_frac(mtcars, 0.2)
View(sample3)