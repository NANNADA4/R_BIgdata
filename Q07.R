library(readxl)

excel_data1 <- read_excel("./datas/06-1.xlsx")

excel_data2 <- mutate(excel_data1, ANN_AVG_AMT = (AMT16 + AMT17) / 2, ANN_AVG_CNT = (Y16_CNT + Y17_CNT) / 2, AVG_AMT = (AMT16 + AMT17) / (Y16_CNT + Y17_CNT))
View(excel_data2)