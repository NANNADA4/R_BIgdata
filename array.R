vec1 <- 1:12
arr1 <- array(vec1, dim = c(2, 2, 3))
arr1

arr1[1, 2, 2]
arr1[1, , ]
arr1[, 1, ]
arr1[, , 1]

arr1[1, 2, 2] <- 100
arr1
arr1[, , 1] <- 0
arr1