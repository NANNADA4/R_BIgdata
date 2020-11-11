library(readxl)
library(dplyr)

exdata1 <- read_excel("./datas/06-1.xlsx")

exdata2 <- exdata1
colnames(exdata2) <- c("ID", "SEX", "AGE", "AREA", "Y17_AMT", "Y17_CNT", "Y16_AMT", "Y16_CNT")

exdata2$AMT <- exdata2$Y16_AMT + exdata2$Y17_AMT
exdata2$CNT <- exdata2$Y16_CNT + exdata2$Y17_CNT
exdata2$AVG_AMT <- exdata2$AMT / exdata2$CNT

exdata2$AGE50_YN <- ifelse(exdata2$AGE >= 50, "Y", "N")

exdata2$AGE_GR <- ifelse(exdata2$AGE >= 50, "50대",
    ifelse(exdata2$AGE >= 40, "40대",
        ifelse(exdata2$AGE >= 30, "30대",
            ifelse(exdata2$AGE >= 20, "20대", "10대"))))

#실습 문제
#1년 평균 이용금액 변수와 데이터 추가
exdata2$AMT_AVG <- 2 / (exdata2$Y16_AMT + exdata2$Y17_AMT)
#1년 평균 이용횟수 변수와 데이터 추가
exdata2$CNT_AVG <- 2 / (exdata2$Y16_CNT + exdata2$Y17_CNT)
#SEX 변수의 데이터값 변경
exdata2$SEX <- ifelse(exdata2$SEX == "M", "남자", "여자")
#1회 평균 금액 100,000 이상이면 VIP, 50,000 ~ 100,000 미만이면 NORMAL, 50,000이하면 DANGER
exdata2$CUSTOM_TYPE <- ifelse(exdata2$AVG_AMT >= 100000, "VIP",
    ifelse(exdata2$AVG_AMT >= 50000, "NORMAL", "DANGER"))

View(exdata2)

exdata3 <- rename(exdata1, CNT17 = Y17_CNT, CNT16 = Y16_CNT)