#날짜: 2021/11/16
#이름: 김예은
#내용: R 로지스틱회귀귀 분석 실습

#데이터 준비하기
View(iris)

df_iris <- iris
df_iris$Species <- as.integer(df_iris$Species)

View(df_iris)

#학습데이터
idx <- sample(1:nrow(df_iris), nrow(df_iris) * 0.8)
idx

train_iris <- df_iris[idx,]
test_iris <- df_iris[-idx,]

View(train_iris)
View(test_iris)

#모델생성 & 학습하기
model <- glm(Species ~ ., data = train_iris )
fitted(model)

#테스트하기
result <- predict(model, test_iris)
result

result <- round(result,0)
result

#성능평가
acc <- mean(result == test_iris$Species)
acc
