# vec1 <- c(1, 2, 3, 4, 5, 6)
# mat1 <- matrix(vec1, nrow = 2, ncol = 3)
# mat2 <- matrix(vec1, nrow = 3, ncol = 2)
# mat3 <- matrix(vec1, nrow = 3, ncol = 2, byrow = T)

# mat4 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
# mat5 <- matrix(1:6, nrow = 2, ncol = 3)

# mat6 <- matrix(1:5, nrow = 2, ncol = 3)

# mat1
# mat2
# mat3
# mat4
# mat5
# mat6

mat1 <- matrix(1:12, nrow = 3, ncol = 4)
mat1

mat1[1, 2]
mat1[2, ]
mat1[, 2]
mat1[2:3, ]
mat1[, 2:4]

mat1[1, 2] <- 100
mat1
mat1[2, ] <- 0
mat1
mat1[, 3] <- -100
mat1
mat1[2:3, ] <- 200
mat1