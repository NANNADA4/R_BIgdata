library(readxl)

datas <- read_excel("./datas/06-1.xlsx")
stem(datas$AGE)

stem(mtcars$mpg) #mtcars의 연비 변수에 대한 줄기 잎 그림
stem(mtcars$hp) #mtcars의 마력 변수에 대한 줄기 잎 그림

# hist(datas$AGE)
# hist(datas$AGE, xlim = c(0, 80), ylim = c(0, 10), main = "AGE", nclass = 4) #hist의 기본형

hist(mtcars$mpg)
hist(mtcars$hp)

hist_data <- table(datas$SEX)
hist_data
barplot(hist_data, main = "SEX Frequency")

barplot(datas$AMT17, names = data$AGE, main = "amount 17")

mat_data = matrix(NA, nrow = 10, ncol = 2)
mat_data[,1] = datas$AMT16
mat_data[,2] = datas$AMT17
mat_data

barplot(mat_data, main = "amount", names = c("2016", "2017"), beside = T) # 일반 막대 그래프
barplot(mat_data, main = "amount", names = c("2016", "2017"), beside = F) # 누적 막대 그래프 (Default)

mat_data2 = matrix(NA, nrow = 2, ncol = 10)
mat_data2[1,] = datas$AMT16
mat_data2[2,] = datas$AMT17
mat_data2

barplot(mat_data2, main = "amount", names = datas$ID, beside = T)
