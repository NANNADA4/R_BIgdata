library(readxl)
library(dplyr)

exceldata1 <- read_excel("./06-1.xlsx")
exceldata2 <- rename(exceldata1, ID = NO, SEX = GENDER, AMT17 = AMT_Y17, Y17_CNT = CNT_Y17, AMT16 = AMT_Y16)
View(exceldata2)