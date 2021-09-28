#날짜:2021/09/27
#이름: 김예은
#내용: R설치와 개요 - 자료형 실습하기 교재 p 41

#숫자형(정수,실수)
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2;num3

#논리형(boolean)
bool1 <- TRUE
bool2 <- FALSE
bool1
bool2

#문자형(문자, 문자열)
str1 <- "Hello"
str2 <- '안녕'
str1 
str2

#특수형
var1 <- NULL # 초기값
var2 <- NA # 결측값, Not Available
var3 <- NaN # 수학적으로 정의가 불가능한 값, Not a Number
var1
var2
var3
####################################################
#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20
int

string <= "홍길동"
string

boolean <- TRUE
boolean

sum(10,20,20)
sum

sum(10,20,20,NA)
sum(10,20,20,NA,na.rm=TRUE) #NA 결측치 제거 후 합계 여산

#교재 p43 실습 - 자료형 확인
is.character(string) #string변수의 문자형 여부 확인 

x <- is.number(int)
x

is.logical(boolean)

is.na(x) #x 변수의 NA 여부 확인

#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기기
x <- c(1,2,"3")
x

result <- x*3

result <- as.numeric(x)*3 # 벡터x를 숫자형으로 변환
#result2 <-as.integer(x)*3 #as.integer함수도 같ㅌ은 결과
result

#교재 p44 실습 - 복소수 자료 생성과 형 변환
z <- 5.3 -3i
Re(z)
Im(z)
is.complex(x) #복소수 여부 확인
as.complex(5.3) #복소수로 형 변환

#교재 p44 실습 - 스칼라 변수의 자료형과 자료구조 확인
#mode(변수):자료의 성격(type)을 알려줌
mode(int)
mode(string)
mode(boolean)

#class(변수): 자료구조의 성격(type)을 알려준다.
class(int)
class(string)
class(boolean)

#교재 p45 실습 - 문자벡터와 그래프 생성
gender <- c("man","woman","woman","man","man")
plot(gender)

#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender)
table(Ngender)

#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)
mode(Ngender)
class(Ngender)
is.factor(Ngender)