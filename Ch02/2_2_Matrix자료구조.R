#날짜: 2021/09/27
#이름: 김예은
#내용: 데이터유형과 구조 - Matrix 실습하기 p.63

#행렬 생성(벡터 결합을 이용)
x <- c(1,2)
y <- c(3,4)

m1 <- rbind(x,y) #rowbind(행-세로)
m2 <- cbind(x,y) #columnbind(열-가로)
m1
m2
m1[1,1]
m2[1,2]

#행렬 생성(matrix() 함수 이용)
m3 <- matrix(c(1:12))
m4 <- matrix(1:12, nrow=3, ncol=4)
m5 <- matrix(1:12, nrow=3)
m6 <- matrix(1:12, 3, byrow=T)
m7 <- matrix(1:12, 4, byrow=F)

m3
m4
m5
m6
m7

#행렬연산
m1 + m2
m1 - m2
m1 * m2
#행렬곱셈함수
m1 %*% m2

#############################################################################
#교재 p64 실습 - 벡터를 이용한 행렬 객체 생성
m <- matrix(c(1:5))
m #열을 기준으로 행렬객체가 생성됨 

#교재 p64 실습 - 벡터의 열 우선으로 행렬 객체 생성하기
m <- matrix(c(1:10), nrow=2)
m

#교재 p64 실습 - 행과 열의 수가 일치하지 않는 경우
m <- matrix(c(1:11), nrow=2)
m

#교재 p65 실습 - 벡터의 행 우선으로 행렬 객체 생성하기
m <- matrix(c(1:10), nrow=2, byrow=T) #byrow=T:행 우선
m

#교재 p65 실습 - 행 묶음으로 행렬 객체 생성하기
x1 <- c(5,4,50:52)
x2 <- c(30,5,6:8)
mr <- rbind(x1,x2)
mr
  
#교재 p65 실습 - 열 묶음으로 행렬 객체 생성하기
mc <- cbind(x1,x2)
mc

#교재 p66 실습 - 2행으로 행렬 객체 생성하기
m3 <- matrix(10:19,2)
m4 <- matrix(10:20, 2)
m3
mode(m3); class(m3)

#교재 p66 실습 - 첨자를 사용하여 행렬 객체에 접근하기
m3[1,]
m3[,5]
m3[2,5]
m3[1,c(2:5)]

#교재 p67 실습 - 3행 3열의 행렬 객체 생성하기
x <- matrix(c(1:9), nrow=3, ncol=3) #열 우선 3행 3열 지정
x

#교재 p67 실습 - 자료의 갯수 보기
length(x)
ncol(x)

#교재 p67 실습 - apply()함수 적용하기
apply(x,1,max)
apply(x,1,min)
apply(x,2,mean)