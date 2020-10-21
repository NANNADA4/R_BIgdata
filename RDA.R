ID <- c(1, 2, 3, 4, 5)
GENDER <- c("F", "M", "F", "M", "F")
data_ex <- data.frame(ID = ID, GENDER = GENDER)

write.csv(data_ex, "./datas/output.csv")
write.table(data_ex, "./datas/output.txt")