install.packages("tidyr") #tidyr helps clean data 
install.packages("data.table") #extended features of data frames. Generally cleaner and faster. 

library(tidyr) # gather, spread, separate, unite
library(data.table)

#gather
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

print(df)

gather(df,Quarter,Revenue,Qtr1:Qtr4)

help("gather")

df%>% gather(Quarter,Revenue,Qtr1:Qtr4)

## spread


stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

stocks.gathered<- stocks%>% gather(stock,price,X,Y,Z)
head(stocks)

head(stocks.gathered)

stocks.gathered%>% spread(stock,price)

spread(stocks.gathered,time,price)

## separate 

df<- data.frame(new_col=c(NA,"a.x","b.y","c.z"))
print(df)
separate(df,new_col,c("ABC","XYZ"))

df2<- data.frame(new_col=c(NA,"a-x","b-y","c-z"))
df2
separate(data=df2, col = new_col, into = c("abc","xyz", sep="-"))

#unite 

df.sep<- separate(data=df2, col = new_col, into = c("abc","xyz", sep="-"))
print(df.sep)

unite(df.sep,new.joined.col,abc,xyz, sep="---")
