#날짜: 2021/10/01
#이름: 김예은
#내용: 정형과 비정형 데이터 처리 - MySQL 데이터 처리 교재p292

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)

#데이터베이스 접속 
conn <- dbConnect(MySQL(),
                  host='54.180.160.240',
                  user='yeeunkim0701',
                  password='1234',
                  dbname='yeeunkim0701')


#쿼리 실행
df_user <- dbGetQuery(conn, statement = 'SELECT * FROM `USER1`')
Encoding(df_user$name) <- 'UTF-8'
df_user

#매출데이터 불러오기
df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM `SALE`')
View(df_sale)

#직원별 매출 현황
df_result1 <- df_sale %>% group_by(uid) %>% summarise(total=sum(sales)) %>% arrange(desc(total))
View(df_result1)

#시각회
ggplot(data = df_result1, aes(x=uid, y=total))+geom_col()

#DB 종료
dbDisconnect(conn)


#날짜 : 2021/09/30
#이름 : 박시현
#내용 : 정형과 비정형 데이터 처리 - MySQL 데이터 처리 교재 p292

install.packages('RMySQL')
library(RMySQL)
library(dplyr)
library(ggplot2)

#데이터베이스 접속
conn <- dbConnect(MySQL(), 
                  host='13.124.154.221', 
                  user='root', 
                  password='bmh8989', 
                  dbname='maro02260226')
#쿼리실행
df_user <- user <- dbGetQuery(conn, statement = 'SELECT * FROM user1')
Encoding(df_user$name) <- 'UTF-8'
df_user

#매출 데이터 불러오기
df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM SALE')
View(df_sale)

#직원별 매출 현황
df_result <- df_sale %>%  group_by(uid) %>% summarise(total = sum(sales)) %>% arrange(desc(total))
View(df_result)

#시각화
ggplot(data = df_result, aes(x=uid, y=total)) + geom_col()

#데이터베이스 종료
dbDisconnect(conn)
예은씨 9_1_MySQL 실습
이거 하나 복붙하면 될거에욜!
  ########################