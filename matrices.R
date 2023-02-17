1:10
v<- 1:10
matrix(v)
matrix(v,nrow=2)
matrix(1:12,byrow=FALSE,nrow=4)
matrix(1:12,byrow=TRUE,nrow=4)
#create vectors
goog <-c(450,451,452,445,468)
msft<-c(230,231,232,233,220)

stocks<- c(goog,msft)

stocks
print(stocks)

stock.matrix<-matrix(stocks,byrow =TRUE,nrow=2)
print(stock.matrix)

#two dimensions 

days <- c("mon","tues","wed","thurs","fri")
StockNames <- c("goog","msft")

colnames(stock.matrix)<-days
rownames(stock.matrix)<-StockNames
print(stock.matrix)


#matrix arithmetic

math<- matrix(1:25,byrow=TRUE,nrow=5)
math
math*2
math/2
math^2
1/math

math >15
math[math<15]
math+math
math/1
math^math
math*math

math*math

math%*%math

#matrix operations 

print(stock.matrix)

#sums of stock prices

colSums(stock.matrix)

rowSums(stock.matrix)

rowMeans(stock.matrix)

#bind new column 

avg<- rowMeans(tech.stocks)
avg
tech.stocks<-cbind(tech.stocks,avg)

#bind new row

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)
tech.stocks

#matrix selection and indexing

v <- c(1,2,3,4,5)
v[2]

mat <- matrix(1:50,byrow=TRUE,nrow = 5)
mat

#grab first row

mat[1,]
#grab first column
mat[,1]

#mat[rows,columns]

#slicing notation columns but return all rows
mat[1:3,]


#slice indexing practice  
mat[1:2,1:3]

mat[,9:10]

mat[2:3,5:6]

mat[4:5,3:5]

#factor and categorical matrices
#factor() function

animal <- c("d","c","d","c","c")
id <- c(1,2,3,4,5)
factor(animal)
fact.ani <- factor(animal)
#nominal categorical variable = no order 



#ordinal Categorical variable = ordered 

ord.cat<-c("cold","med","hot")
temps<-c("cold","med","hot","hot","hot","med","cold")
temps
fact.temp<-factor(temps,ordered = TRUE,levels=c("cold","med","hot"))
fact.temp
summary(fact.temp)
summary(temps)

#R matrix exercises

A<- c(1,2,3)
B<- c(4,5,6)

AplusB <- rbind(A,B)
print(AplusB)

mat <- matrix(1:9,nrow=3)
print(matrix(data, nrow = rows, ncol = cols))

is.matrix(mat)

mat2 <- matrix(1:25,byrow = TRUE,nrow = 5)
print(mat2)

mat2[2:3,2:3]

mat2[4:5,4:5]

sum<- sum(mat2)
print(sum)

help("runif")

runif(20, min = 0, max = 100)

matrix(runif(20),nrow=4)

