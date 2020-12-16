library(readxl)

datas <- read_excel("./datas/06-1.xlsx")
datas$ID
boxplot(datas$ID, datas$AGE)

datas = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30)
boxplot(datas)

datas1 <- mtcars
datas1
boxplot(mtcars$hp, mtcars$wt, mtcars$qsec, mtcars$carb)
