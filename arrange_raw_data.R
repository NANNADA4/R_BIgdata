library(readxl)
library(dplyr)

exdata1 <- read_excel("./datas/06-1.xlsx")
exdata1
# View(exdata1)
# str(exdata1)
# dim(exdata1)
# ls(exdata1)

exdata2 <- exdata1
colnames(exdata2) <- c("ID", "SEX", "AGE", "AREA", "Y17_AMT", "Y17_CNT", "Y16_AMT", "Y17_CNT")
View(exdata1)
View(exdata2)

exdata3 <- rename(exdata1, CNT17 = Y17_CNT, CNT16 = Y16_CNT)
View(exdata3)