library(readxl)
library(dplyr)

m_data <- read_excel("./datas/07-2(1).xlsx")
f_data <- read_excel("./datas/07-2(2).xlsx")

join_data1 <- bind_rows(m_data, f_data)
View(join_data1)

data1 <- read_excel("./datas/07-3(1).xlsx")
data2 <- read_excel("./datas/07-3(2).xlsx")

join_data3 <- left_join(data1, data2, by = "ID")
View(join_data3)

join_data4 <- left_join(data1, data2, by = "ID")
View(join_data4)