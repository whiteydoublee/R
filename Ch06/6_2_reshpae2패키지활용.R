#날짜: 2021/09/29
#이름: 김예은
#내용: reshpae2패키지활용실습하기 교재 p184

install.packages('reshape2')
library('reshape2')

df_student <- read.csv('../file/student4.txt')
df_student

#melt - column -> row, 가로로 긴 형태의 데이터를 세로로 길게 전환하는 함수
melt_result1 <- melt(df_student, id.vars = '번호')
melt_result1

melt_result2 <- melt(df_student, id.vars = '번호', measure.vars = '이름' )
melt_result2

#dcast - row -> column, 세로로 긴 형태의 데이터를 가로로 길게전환하는 함수
dcast_result<- dcast(melt_result1, 번호 ~ variable )
dcast_result

#교재 p184 실습 - reshape2 패키지 설치와 데이터 가져오기
data <- read.csv('../file/exam.csv')
View(data)

#교재 p185 실습 - 넓은 형식으로 변경하기
wide <- dcast(data,id ~ science, sum)
wide

#교재 p185 실습 - 파일 저장 및 읽기
setwd('../file')
write.csv(wide, "wide.csv", row.names = FALSE)

wide <- read.csv("wide.csv")
colnames(wide) <- c('id','class','maht','english','science')
wide

#교재 p186 실습 - 넓은 형식의 데이터를 긴 형식으로 변경하기
long <- melt(wide, id="id")
long

name <- C

#교재 p186 실습 - smiths 데이터셋 확인하기

#교재 p187 실습 - airquality 데이터 셋의 구조 변경하기