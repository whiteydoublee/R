#날짜: 2021/11/16
#이름: 김예은
#내용: R 회귀분석석계 분석 실습

df_product <-read.csv('../file/product.csv')
df_product

df_xy <- data.frame(df_product$제품_적절성, df_product$제품_만족도)
df_xy

x <- df_xy$df_product.제품_적절성
y <- df_xy$df_product.제품_만족도

#선형 회귀 모델
model <- lm(formula = y ~ x, data = df_xy)
model

#테스트
predict(model, 1)
predict(model, 2)
predict(model, 3)
predict(model, 4)
predict(model, 5)

#galton 선형회귀 분석
install.packages('UsingR')
library(UsingR)

View(galton)

galton_model <- lm(child ~ parent, data = galton)
galton_model

#시각화
plot(galton$child, galton$parent, data = galton)
abline(galton_model, col = 'red')
