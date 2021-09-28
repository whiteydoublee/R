#날짜: 2021/09/27
#이름: 김예은
#내용: 데이터유형과 구조 - Vector 실습하기 p.58

#vector - R에서 가장 많이 사용하는 자료구조
var1 <- c(1,2,3,4,5)
var1
var1[1]
var1[5]

var2 <- 1:5
var2
var2[4]
var2[3]

#Vecotr 연산
x <- 1:4
y <- 5:8

x+y
x-y
x*y

#seq() 함수 벡터생성 
var3 <- seq(1,10,by=2)
var3

#벡터의 합과 평균
sum_var1 <- sum(var1)
sum_var2 <- sum(var2)
mean_var1 <- mean(var1)
mean_var2 <- mean(var2)

sum_var1
sum_var2
mean_var1
mean_var2

#############################################################################
#교재 p58 실습 - c() 함수를 이용한 벡터 객체 생성
c(1:20) #combine value 함수
1:20
c(1,2,3,4,5)

#교재 p58 실습 - seq() 함수를 이용한 벡터 객체 생성
seq(1,10,2) #sequence value함수 (1-10까지 2식 증가)

#교재 p59 실습 - rep() 함수를 이용한 벡터 생성 
rep(1:3,3) #replicate value 함수
rep(1:3, each=3)

#교재 p59 실습 - union(), setdiff(), intersect() 함수를 이용한 벡터 자료 처리
x <- c(1,3,5,7)
y <- c(3,5)
union(x,y)
setdiff(x,y)
intersect(x,y)

#교재 p59 실습 - 숫자형, 문자형, 논리형 벡터 생성
v1 <- c(33,-5,20:23,12,-2:3)
v2 <- c("홍길동","이순신","유관순")
v3 <- c(T, TRUE, FALSE, T, TRUE, F, T)
v1;v2;v3

#교재 p60 실습 - 자료형이 혼합된 경우
#교재 p60 실습 - 벡터 객체의 값에 칼럼명 지정

#교재 p61 실습 - 벡터 자료 참조하기
#교재 p61 실습 - c() 함수에서 콤마 사용 예