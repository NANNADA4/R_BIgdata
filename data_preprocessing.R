library(readxl)
library(dplyr)

exdata1 <- read_excel("./datas/06-1.xlsx")

colnames(exdata1) <- c("ID", "SEX", "AGE", "AREA", "Y17_AMT", "Y17_CNT", "Y16_AMT", "Y16_CNT")
View(exdata1)

customers <- select(exdata1, ID, SEX, AGE, AREA)
View(customers)

customer_data_17 <- select(exdata1, -Y16_AMT, -Y17_AMT)
View(customer_data_17)

customer_seoul <- filter(exdata1, AREA == "서울")
View(customer_seoul)

customer_vip <- filter(exdata1, Y16_CNT + Y17_CNT > 50)
View(customer_vip)

order_age <- arrange(exdata1, AGE)
View(order_age)

order_amt17 <- arrange(exdata1, desc(Y17_AMT))
View(order_amt17)

Y16_summary <- summarise(exdata1, Y16AMT_mean = mean(Y16_AMT), Y16CNT_mean = mean(Y16_CNT))
View(Y16_summary)

gender <- group_by(exdata1, SEX)
gender_freq <- summarise(gender, gender_frequency = n())
View(gender_freq)

exdata2 <- mutate(exdata1, T_CNT = Y16_CNT + Y17_CNT, T_AMT = Y16_AMT + Y17_AMT, AVG_AMT = T_AMT / T_CNT)
View(exdata2)

exdata3 <- mutate(exdata2, AGE_GRP = ifelse(AGE >= 20 & AGE < 30, "20대",
    ifelse(AGE >= 30 & AGE < 40, "30대",
        ifelse(AGE >= 40 & AGE < 50, "40대", "50대 이상"))))
View(exdata3)

age_grp <- group_by(exdata3, AGE_GRP)
exdata4 <- summarise(age_grp, mean(AVG_AMT))
View(exdata4)

gender_AMTCNT <- group_by(exdata2, SEX)
exdata5 <- summarise(gender_AMTCNT, mean(T_CNT), mean(T_AMT), mean(AVG_AMT))
View(exdata5)