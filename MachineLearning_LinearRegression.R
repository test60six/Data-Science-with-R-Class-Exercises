install.packages("ggplot2")
install.packages("dplyr")
install.packages("corrgram")
install.packages("corrplot")
install.packages("ggthemes")


#import data 
df<- read.csv("student-mat.csv")
#check the head
head(df)
#data looks weird as it's separated by a semicolon 
# add a separator argument to reads function 
df<- read.csv("student-mat.csv", sep=";")
head(df)
#looks normal now... Check the separator values of csv if it looks different 

summary(df)

#cleaning the data 

#check to see if anything is missing 
any(is.na(df))

#check data structure
str(df)

#data is already cleaned  so moving on
# call libraries 

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)

#grab number only 

num.cols<- sapply(df,is.numeric)

cor.data<- cor(df[,num.cols])
#view data
print(cor.data)



#corrplot visualization 
print(corrplot(cor.data,method = "color"))

#corrgram visualization 
corrgram(df)

help("corrgram")


#dressing it up, pca based ordering
corrgram(df,order = TRUE,lower.panel = panel.shade,
         upper.panel = panel.pie,text.panel = panel.txt)

# g 3 score
data1<- ggplot(df,aes(x=G3))+ geom_histogram(bins=20,alpha=0.5,fill="blue")
 print(data1)


