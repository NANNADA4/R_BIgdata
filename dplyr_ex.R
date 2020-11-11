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