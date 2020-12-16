library(readxl)

excel_data10 <- read_excel("./datas/06-1.xlsx")

graph_data1 <- mutate(excel_data10, AVG16 = AMT16 / Y16_CNT)
graph_data2 <- mutate(graph_data1, AVG17 = AMT17 / Y17_CNT)
graph_data3 <- mutate(graph_data2, AVG_ALL = (AVG16 + AVG17) / 2)

graph_data4 <- matrix(NA, nrow = 10, ncol = 3)
graph_data4[,1] <- graph_data3$AVG16
graph_data4[,2] <- graph_data3$AVG17
graph_data4[,3] <- graph_data3$AVG_ALL

barplot(graph_data4, main = "AVERAGE AMOUNT", names = c("2016", "2017", "AVG"), beside = T)
