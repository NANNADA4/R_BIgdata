library(readxl)
library(dplyr)

exceldata1 <- read_excel("./datas/06-1.xlsx")
exceldata2 <- rename(exceldata1, NO = ID, GENDER = SEX, AMT_Y17 = AMT17, CNT_Y17 = Y17_CNT, AMT_Y16 = AMT16)
View(exceldata2)