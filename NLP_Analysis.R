library(wordcloud2)

naun_data = c("가", "나", "나", "다", "라", "마", "바", "사", "아", "자", "차", "카", "타", "파", "하", "하", "하", "가", "라", "사", "사", "아")
v_data <- unlist(naun_data)
f_data <- Filter(function(x){nchar(x) >= 2}, v_data)
t_data <- table(f_data)

wordcloud2(t_data)