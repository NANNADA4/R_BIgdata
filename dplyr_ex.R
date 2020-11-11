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