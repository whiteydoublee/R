#날짜: 2021/09/28
#이름: 김예은
#내용: 제어문과 함수 - 조건문 교재 p 110

##################
#교재예제 실습하기
##################

#교재 p110 실습 - if() 사용하기
x <- 50; y <- 4; z <- x*y
if(x*y >= 40){
  cat("x*y의 결과는 40 이상입니다.\n")
  cat("x*y=",z)
}else{
  cat("x*y의 결과는 40미만입니다. x*y =",z,"\n")
}

#교재 p110 실습 - if() 사용으로 입력된 점수의 학점 구하기
score <- scan()#점수입력받기
score

result <-"노력"
if(score >=80){
  result <- "우수"
}
cat("당신의 학점은",result,score)

#교재 p111 실습 - if ~ else if 형식으로 학점 구하기
score <- scan()
if(score>=90){
  result = "A학점"
}else if(score>=80){
  result = "B학점"
}else if(score>=70){
  result = "C학점"
}else if(score>=60){
  result = "D학점"
}else{
  result = "F학점"
}
cat("당신의 학점은",result) #문자열과 변수의 값을 함께 출력
print(result)

#교재 p112 실습 - ifelse() 사용하기
score <- scan()

ifelse(score>=80,"우수","노력")
ifelse(score<=80,"우수","노력")

#교재 p112 실습 - ifelse() 응용하기


#교재 p113 실습 - ifelse() 에서 논리연산자 사용하기
#교재 p113 실습 - switch() 를 사용하여 사원명으로 급여정보 보기

#교재 p114 실습 - 벡터에서 which() 사용:index 값을 반환
#교재 p114 실습 - 데이터프레임에서 which() 사용