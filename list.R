scalar = 100
vec = c(1, 2, 3)
mat = matrix(1:6, nrow = 2, ncol = 3)
array = array(1:12, dim = c(2, 3, 2))

list1 = list(scalar, vec, mat, array)
list2 = list(list1, array)

# list1
# list2

member = list(name = c("홍길동", "김길동"),
              age = c(20, 30),
              address = c("서울", "진천"),
              gender = c("남", "여"))

# member

list1[2]
member[2]
member$address
member$address[1]







