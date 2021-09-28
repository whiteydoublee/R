#날짜:2021/09/27
#이름: 김예은
#내용: R설치와 개요 - 변수 실습하기 교재 p 39

# r 스튜디오 기본설정
#Tools -> Global Options -> Code -> Saving -> Default Encoding: UTF-8
#Tools -> Global Options -> Spelling -> 'user real time spellchecking'체크해제
#라인(단위)실행 : ctrl+Enter

#변수
num1 <- 1
num2 <- 2
print(num1)
print(num2)

str1 <- "Hello, R!"
str2 <- '안녕 R!'
str1
str2

# 스칼라(Scala) 변수(한 개의 값을 갖는 변수, 일반 변수) 
var1 <- 1
var2 <- 2
var3 <- var1 + var2
var3
# 벡터(Vector) 변수(하나 이상의 값을 갖는 변수, 배열)
x <- c(1,2,3)
y <- c('서울','대전','대구','부산','광주')
x
y

# 팩터(factor) 변수(문자열이 저장되는 벡터, 범주형 데이터)
type <- c('A','B','B','O','AB','A')
fType <- factor(type)
fType

################################
#교재 p40 실습 - 변수 사용 예
var1 <-0 #변수 var1에 값 0으로 초기화
var1

var1 <-1 #변수 var1에 값을 1로 변경(변수 재사용)
var1

var2 <- 2
var2

var3 <- 3
var3

#교재 p40 실습 - 변수.멤버 형식의 변수 선언 예
goods.code <- 'a001'
goods.name <- '냉장고'
goods.price <- 850000
goods.des <- '최고사양, 동급 최고 품질'

#교재 p41 실습 - 스칼라 변수 사용 예
age <- 35
name <- '홍길동'
age 
name

#교재 p41 실습 - 벡터 변수 사용 예
age <- 35
names <- c('홍길동','이순신','유관순')
age
names
