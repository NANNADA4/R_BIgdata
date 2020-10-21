ID <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
GENDER <- c("F", "M", "F", "M", "M", "F", "F", "F", "M", "F")
AGE <- c(50, 40, 28, 50, 27, 23, 56, 47, 20, 38)
AREA <- c("서울", "경기", "제주", "서울", "서울", "서울", "경기", "서울", "인천", "경기")

dataframe <- data.frame(ID, GENDER, AGE, AREA)
dataframe

dataframe[1, 2]
dataframe[1, ]
dataframe[, 1]

dataframe$GENDER

dataframe[1, 2] <- "M"
dataframe