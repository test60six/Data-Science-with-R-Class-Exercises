#creating data frames

empty <- data.frame()
c1 <- 1:10
c1
letters
c2 <- letters[1:10]
c1
c2
df <- data.frame(col.name.1 = c1, col.name.2=c2)
print(df)

#importing and exporting data (.csv)


#read
d2 <-read.csv("saved_df.csv ")
print(d2)
#write

write.csv(df,file="saved_df.csv")
df2 <-read.csv("saved_df.csv")
print(df2)

#getting info about the data frame

nrow(df)
ncol(df)
colnames(df)
row.names(df)
#structure of data frame 
str(df)

summary(df)

#referencing cells in a data frame

print(df)

df[[5,2]]

df[[5,"col.2name"]]

df[[2,"col.name.1"]]<- 9999

print(df)

# referencing rows

df [1,]

#referencing columns 

mtcars

head(mtcars)
#four different ways of retaining a vector of specific column
mtcars$mpg
mtcars[,"mpg"]
mtcars[,1]
mtcars[["mpg"]]

#return data frame of column 
mtcars["mpg"]

#return multiple columns using vector 

head(mtcars[c("mpg","cyl")])

#adding rows 

df2 <- data.frame(col.name.1=2000,col.name.2 = "new")
print(df2)

print(df)


dfnew <- rbind(df,df2)
dfnew

#adding new columns 

df$newcol <- 2*df$col.name.1

print(df)

df$newcol.copy <- df$newcol
head(df)


df[,"newcol.copy2"]<-df$newcol
head(df)

#setting column names

colnames(df)<- c("1","2","3","4","5")
head(df)

colnames(df)[1] <- "new col name"
head(df)

#selecting multiple rows

df[1:10,]

df[1:3,]

head(df)
head(df,7)
head(df)
df[-2,]

#conditional selection 

head(mtcars)

mtcars[mtcars$mpg > 20,] #don't forget the comma at the end

head(mtcars)

mtcars[(mtcars$mpg > 20) & (mtcars$cyl ==6),]

mtcars[(mtcars$mpg > 20) & (mtcars$cyl ==6), c("mpg","cyl","hp")]

#selecting row/multiple rows base on condition 

subset(mtcars,mpg > 20 & cyl ==6)

#selecting multiple columns pt 2 

head(mtcars)

mtcars[,c(1,2,3)]

mtcars[,c("mpg","cyl","hp")]

# dealing with missing data 

#check for missing data 

is.na(mtcars)

any(is.na(df))

any(is.na(mtcars$mpg))
any(is.na(mtcars))

df[is.na(df)]<-0

print(df)

#replace missing data with mean of  whatever category 

mtcars$mpg[is.na(mtcars$mpg)] <-mean(mtcars$mpg)
head(mtcars)

#exercise 


name<- c("sam","frank","amy")
age<- c(22,25,26)
weight<- c(150,165,120)
sex<- c("m","m","f")
people <- data.frame(row.names=name,age,weight,sex)
print(people)

is.data.frame(people)
is.data.frame(mtcars)

mat<- matrix(1:25,nrow=5)
 
data.frame(mat)
as.data.frame(mat)

df<- data.frame(mtcars)

head(df)

mean(df$mpg)

df[(df$cyl==6),]
df[df$cyl==6,]
subset(df,cyl==6)

df[,c("am","gear","carb")]

df$performance <- df$hp/df$wt
head(df)

df$performance<- round(df$performance,digits=2)

head(df)

subset(df,hp > 100 & wt > 2.5)$mpg

mean(subset(df,hp > 100 & wt > 2.5)$mpg)

df["Hornet Sportabout",]$mpg

