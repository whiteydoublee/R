#날짜: 2021/09/30
#이름: 김예은
#내용: 고급시각화분석 - 예제 실습 교재 p259

#교재 p234 실습 - lattice 패키지 설치하기
install.packages('lattice')
library('lattice')

#(2) 실습용 데이터 가져오기
install.packages('mlmRev')
library('mlmRev')

data(Chem97)
str(Chem97)
head(Chem97,30)

Chem97

#교재 p236 실습 - histogram()함수를 이용하여 데이터 시각화하기
#Chem97 데이터셋의 gcsescore 변수를 x축으로 하여 히스토그램 그리기
histogram(~gcsescore, data = Chem97)

#교재 p236 실습 - score 변수를 조건변수로 지정하여 데이터 시각화하기
histogram(~gcsescore | score, data = Chem97)
#score 변수를 적용
histogram(~gcsescore | factor(score), data = Chem97)

#교재 p238 실습 - densityplot()함수를 이용하여 밀도 그래프 그리기

densityplot(~gcsescore|factor(score),data= Chem97,
            groups=gender,
            plot.points=T, auto.key = T)

#교재 p239 실습 - barchart()함수를 사용하여 막대그래프 그리기
#(1)기본데이터셋 가져오기
data(VADeaths)
VADeaths

#(2) VADeaths 데이터 셋 구조보기
str(VADeaths)
mode(VADeaths)

#(3) 데이터 형식 변경(matrix형식을 table형식으로 변경)
dft <- as.data.frame.table(VADeaths)
str(dft)
dft

#(4)막대그래픞 그리기
barchart(Var1~Freq|Var2, data = dft, layout = c(4,1))

#(5)origin 속성을 사용하여 막대그래프 그리기
barchart(Var1~Freq|Var2, data = dft, layout=c(4,1), origin =0 )

#교재 p241 실습 - dotplot()함수를 사용하여 점 그래프 그리기
#(1) layout 속성이 없는 경우
dotplot(Var1 ~ Freq | Var2, dft)

#(2) layout을 적용한 경우
dotplot(Var1 ~ Freq | Var2, dft, layout=c(4,1))

#교재 p241 실습 - 점을 선으로 연결하여 시각화하기
dotplot(Var1~Freq, data = dft,
        groups = Var2, type="o",
        auto.key=list(space ="right", points = T, lines = T)) #범례추가

#교재 p242 실습 - airquality데이터 셋으로 산점도 그래프 그리기
#(1) airquality 데이터 셋 가져오기
library(datasets)
str(airquality)

#(2) xyplot함수를 사용하여 산점도 그리기
#airquality의 Ozone 변수를 y축, Wind 변수를 x축으로
xyplot(Ozone ~ Wind, data = airquality)

#(3) 조건변수를 사용하는 xyplot()함수로 산점도 그리기
xyplot(Ozone ~ Wind|Month, data = airquality)

#(4) 조건변수와 layout 속성을 사용하는 xyplot() 함수로 산점도 그리기
xyplot(Ozone ~ Wind|Month, data = airquality, layout=c(5,1))

#(5) Moth 변수를 factor 타입으로 변환하여 산점도 그리기
#패널 제목에는 factor 값을 표시
convert <- transform(airquality, Month=factor(Month))
str(convert)
xyplot(Ozone ~ Wind|Month, data=convert)

#교재 p242 실습 - airquality데이터 셋으로 산점도 그래프 그리기
#(1) quakes 데이터 셋 보기
head(quakes)
str(quakes)

#(2) 지진 발생 진양지(위도와 경도) 산점도 그리기
xyplot(lat~ long, data = quakes, pch = ".")

#(3) 산점도 그래프를 변수에 저장하고, 제목 문자열 추가하기
#xyplot()함수의 결과인 산점도 그래프를 변수에 저장
tplot <- xyplot(lat~ long, data = quakes, pch = ".")
#변수의 내용 업데이트
tplot <- update(tplot, main = "1964년 이후 태평양에서 발생한 지진 위치")
print(tplot) #산점도 그래프를 저장하는 변수 출력

#교재 p243 실습 - 이산형 변수를 조건으로 지정하여 산점도 그리기
#(1)depth 변수의 범위 확인
range(quakes$depth)

#(2) depth 변수 리코딩: 6개 ㄱ범주(100단위)로 코딩 변경
quakes$depth2[quakes$depth>=40 & quakes$depth>=150] <-1
quakes$depth2[quakes$depth>=151 & quakes$depth>=250] <-2
quakes$depth2[quakes$depth>=251& quakes$depth>=350] <-3
quakes$depth2[quakes$depth>=351 & quakes$depth>=450] <-4
quakes$depth2[quakes$depth>= 451 & quakes$depth>=550] <-5
quakes$depth2[quakes$depth>= 551 & quakes$depth>=680] <-6

#(3) 리코딩된 변수(depth2)를 조건으로 산점도 그리기
convert <- transform(quakes, depth2 = factor(depth2)) # facotr 형으로 변환
xyplot(lat~long|depth2, data = convert)

#교재 p248 실습 - 동일한 패널에 두 개의 변수값 표현하기
