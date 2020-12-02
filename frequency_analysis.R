library(descr)
library(dplyr)
library(readxl)

# data <- read_excel("./datas/06-1.xlsx")

# freq_area <- freq(data$SEX, plot = T)
# freq_area

# summarise1 <- c(mean(data$AGE), median(data$AGE), quantile(data$AGE, 1))
# summarise1

# summarise2 <- c(max(data$AGE), min(data$AGE), var(data$AGE), sd(data$AGE))
# summarise2

# summarise(data, MEAN_AGE = mean(data$AGE), MEDIAN_AGE = median(data$AGE), Q4_AGE = quantile(data$AGE, 1))
# summarise(data, MAX_AGE = max(data$AGE), MIN_AGE = min(data$AGE), V_AGE = var(data$AGE), SD_AGE = sd(data$AGE))
# summarise(data, N = n())

# data <- mutate(data, T_AMT = data$AMT16 + data$AMT17)

# summarise(data, MEAN_AMT = mean(data$T_AMT), SUM_AMT = sum(data$T_AMT))
# summarise(data, MAX_AMT = max(data$T_AMT), MIN_AMT = min(data$T_AMT), SD_AMT = sd(data$T_AMT))
# summarise(data, N = n())

# data <- group_by(data, SEX)
# data

# summarise(data, MEAN_AGE = mean(AGE), MEDIAN_AGE = median(AGE), Q4_AGE = quantile(AGE, 1))
# summarise(data, MAX_AGE = max(AGE), MIN_AGE = min(AGE), V_AGE = var(AGE), SD_AGE = sd(AGE))
# summarise(data, N = n())

exdata <- read_excel("./datas/06-1.xlsx")

exdata1 <- mutate(exdata, T_CNT = Y16_CNT + Y17_CNT)

summarise(exdata1, MEAN_CNT = mean(exdata1$T_CNT), MED_CNT = median(exdata1$T_CNT))
summarise(exdata1, SD_CNT = sd(exdata1$T_CNT))
summarise(exdata1, VAR_CNT = var(exdata1$T_CNT))

exdata2 <- mutate(exdata1, AVG_AMT = (AMT17 + AMT16) / 2)

summarise(exdata2, MEAN_AMT = mean(exdata2$AVG_AMT), MED_AMT = median(exdata2$AVG_AMT))
summarise(exdata2, SD_AMT = sd(exdata2$AVG_AMT))
summarise(exdata2, VAR_CMT = var(exdata2$AVG_AMT))

exdata3 <- group_by(exdata2, AREA)

summarise(exdata3, MEAN_AGE = mean(exdata3$AGE), MEDIAN_AGE = median(exdata3$AGE))
summarise(exdata3, MEAN_AMT = mean(exdata3$AVG_AMT), median(exdata3$AVG_AMT), sum(exdata3$AVG_AMT), sd(exdata3$AVG_AMT))

freq_AREA <- freq(exdata2$AREA, plot = F)
freq_AREA

freq_gear <- freq(mtcars$gear, plot = F)
freq_gear

summarise(mtcars, MEAN_MPG = mean(mtcars$mpg), MEDIAN_MPG = median(mtcars$mpg))
summarise(mtcars, SD_MPG = sd(mtcars$mpg))
summarise(mtcars, VAR_mpg = var(mtcars$mpg))
