#혈액형으로 도수분표표 만들기기
blood = c("B" , "A" , "B" , "A" , "A" , "B" , 
          "O" , "A" , "A" , "A" , "O" , "B" , 
          "AB" , "B" , "AB" , "AB" , "A" , 
          "A" , "O" , "AB" , "O" , "A" , "B" , 
          "O" , "B" , "B" , "A" , "A" , "O" , 
          "A" , "A" , "AB" , "B" , "B" , "O" , 
          "B" , "B" , "B" , "A" , "AB" , "A" , 
          "A" , "B" , "O" , "B" , "B" , "O" , 
          "B" , "O" , "B" , "A" , "A" , "AB" , "A" , "A")
#data 의 갯수, 길이 출력
length(blood)
is.vector(blood)  #vector임을 확인
cnt = table(blood)  #table로 만들어주기(도수가 어떻게 분포되는지)
cnt

#도수를 퍼센트화 하기
prop = prop.table(cnt)
cbind(cnt,prop)  #cnt, prop 모두 출력

#막대그래프로 표현해주기 (상대적으로 표현가능)
barplot(cnt)
#원형좌표표현(차이가 한눈에 들어오기 힘듦)
pie(cnt)

#export로 그래프 출력 저장 가능(복사가능)