#날짜: 2021/09/28
#이름: 김예은
#내용: 제어문과 함수 - 연산자 교재 p 108

##################
#교재예제 실습하기
##################

#교재 p108 실습 - 산술연산자 사용
num1 <- 100
num2 <- 20
result <- num1+num2
result

result <- num1 - num2
result

result <- num1*num2
result

result <- num1/num2
result

result <- num1%%num2 #나머지 계산
result

result <- num1^2 #제곱계산
result

result <- num1 ^num2 #num1의 num2승
result

#교재 p109 실습 - 관계연산자 사용
#(1)동등비교
boolean <- num1 == num2 #두 변수의 값이 같은지 비교
boolean

boolean <- num1 != num2
boolean

#(2)크기의 비교
boolean <- num1 > num2
boolean

boolean <- num1 >= num2 
boolean

boolean <- num1 < num2
boolean

boolean <- num1 <= num2
boolean

#교재 p109 실습 - 논리연산자 사용
logical <- num1 >=50 & num2 <=10 #두 관계식이 같은지 판단(AND)
logical

logical <- num1 >=50 | num2 <=10 #두 관계식 중 하나라도 같은지 판단(OR)
logical

logical <- !(num1 >= 50) #괄호안의 관계식 판단 결과에 대한 부정
logical

x <- TRUE; y <- FALSE
xor(x,y)