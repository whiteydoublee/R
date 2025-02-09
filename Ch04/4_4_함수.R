#날짜: 2021/09/28
#이름: 김예은
#내용: 제어문과 함수 - 함수 교재 p 115


##################
#교재예제 실습하기
##################

#교재 p118 실습 - 매개변수가 없는 사용자 함수 정의하기
f1 <- function(){
  cat("매개변수가 없는 함수")
}

f1()

#교재 p118 실습 - 결과를 반환하는 사용자 함수 정의하기
f3 <- function(x,y){
  add <- x+y
  return(add)
}

add <- f3(10,20)
add


#교재 p119 실습 - 기본함수를 사용하여 요약통계량과 빈도수 구하기
#(1)파일불러오기
test <- read.csv("../file/test.csv", header=TRUE)
head(test)

#(2)요약통계량 구하기
summary(test) #변수(A,B,C,D,E)별 요약통계량
#(3)특정변수의 빈도수 구하기
table(test$A)
#(4)각 칼럼 단위의 빈도수와 최대값, 최소값 계산을 위한 사용자 함수 정의
data_pro <- function(x){
  for(idx in 1:length(x)){ #칼럼수 만큼 반복
    cat(idx, "번째 칼럼의 빈도 분석결과")
    print(table(x[idx])) #칼럼별 빈도수 출력
    cat("\n")
  }
  for (idx in 1:length(x)){
    f <-table(x[idx])
    cat(idx,"번째 칼럼의 최대값/최소값\n")
    cat("max=",max(f),"min=",min(f),"\n")
  }
}
data_pro(test)

#교재 p120 실습 - 분산과 표준편차를 구하는 사용자 함수정의
x <- c(7,5,12,9,15,6)

var_sd <- function(x){
  var <- sum(x - mean(x)/2)/(length(x)-1)
  sd <- sqrt(var)
  cat("표본분산 :",var,"\n")
  cat("표본표준편차:",sd)
}

var_sd(x)

#교재 p121 실습 - 피타고라스식 정의 함수 만들기
pytha <- function(s,t){
  a <- s^2 - t^2
  b <- 2*s*t
  c <- s^2 + t^2
  cat("피타고라스의 정리:3개의 변수",a,b,c)
}
pytha(2,1)

#교재 p121 실습 - 구구단 출력함수 만들기

#교재 p122 실습 - 결측치를 포함하는 자료를 대상으로 평균구하기

#교재 p126 실습 - 기술통계량 관련 내장함수 사용하기
#교재 p126 실습 - 정규분포(연속형)의 난수 생성하기

#교재 p127 실습 - 균등분포(연속형)의 난수 생성하기

#교재 p128 실습 - 이항분포(이산형)의 난수 생성하기
#교재 p128 실습 - 종자값으로 동일한 난수 생성하기

#교재 p130 실습 - 수학 관련 내장함수 사용하기

#교재 p131 실습 - 행렬연산 내장함수 사용하기
#교재 p132 실습 - 집합연산 관련 내장함수 사용하기