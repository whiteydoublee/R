#날짜: 2021/11/16
#이름: 김예은
#내용: R 상관관계 분석 실습

install.packages('corrplot')
library(corrplot)

data(iris)

df_iris <- iris
df_iris

#상관계수 확인
cor(df_iris$Sepal.Length, df_iris$Sepal.Width)
cor(df_iris$Sepal.Length, df_iris$Petal.Width)
cor(df_iris$Petal.Length, df_iris$Petal.Width)

#상관행렬
corr_iris <- cor(df_iris[,1:4], method = 'pearson')
corr_iris

#시각화화
corrplot(corr_iris)
corrplot(corr_iris, type = 'lower')
corrplot(corr_iris, method = 'number')

##############################################################################
#product 상관분석
df_product <-read.csv('../file/product.csv')
df_product

#상관계수확인
cor(df_product$제품_친밀도,df_product$제품_적절성)
cor(df_product$제품_친밀도,df_product$제품_만족도)
cor(df_product$제품_적절성,df_product$제품_만족도)

#상관행렬 확인
corr_product <- cor(df_product, method = 'pearson')
corr_product


#시각화
corrplot(corr_product)


