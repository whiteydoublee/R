#날짜: 2021/10/01
#이름: 김예은
#내용: 정형과 비정형 데이터 처리 - 텍스트 시각화 실습 교재p301

install.packages('https://cran.seoul.go.kr/bin/windows/contrib/3.4/KoNLP_0.80.1.zip', repos=NULL)
install.packages('dplyr')
install.packages('stringr')
install.packages('wordcloud')
install.packages('Sejong')
install.packages('hash')
install.packages('rJava')
install.packages('tau')
install.packages('devtools')
install.packages('memoise')
install.packages('RSQLite')

library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)

#텍스트 데이터 불러오기
txt_data <- readLines('../file/wordcloud_data.txt', encoding = 'UTF-8')
txt_data

#명사 추출
txt_noun <- extractNoun(txt_data)
