library(readxl)

excel_data3 <- read_excel("./datas/06-1.xlsx")

excel_data4 <- mutate(excel_data3, AGE_GRP = ifelse(AGE >= 20 & AGE < 30, "20대",
    ifelse(AGE >= 30 & AGE < 40, "30대",
        ifelse(AGE >= 40 & AGE < 50, "40대", "50대 이상"))))

age_grp1 <- group_by(excel_data4, AGE_GRP)
age_grp2 <- summarise(age_grp1, mean(AMT16 + AMT17), median(AMT16 + AMT17), sum(AMT16 + AMT17), sd(AMT16 + AMT17))
View(age_grp2)