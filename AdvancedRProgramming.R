##built in features/functions
#seq()  creating sequences
#sort() sort a vector
#rev() reverse elements in an object 
#str() show the structure of an object 
#append() merge objects together (vectors and lists)

seq(0,10,by=2)
seq(0,100,by=10)
seq(0,24,by=2)


v<-c(1,4,7,2,13,3,11)
sort(v)
sort(v,dec=TRUE)

cv<-c("b","d","a","c")
sort(cv,dec=FALSE)

cv<-c("b","d","a","c")
sort(cv,dec=TRUE)

v<- 1:10
rev(v)

str(v)
str(mtcars)
summary(mtcars)

v<- 1:10 
v2<-35:40
append(v,v2)

#checking and converting the data type

#checking
v<- c(1,2,3)
is.vector(v)
is.data.frame(v)

#converting
as.list(v)
as.matrix(v)

###### Apply function 


#sample
print(sample(x=1:100,3))


#apply 
v<-c(1:5)

addrand <- function(x){
  ran<- sample(1:100,1)
  return(x+ran)
}

print(addrand(10))


#lapply returns a list

result <- lapply(v,addrand)

print(result)

# sapply returns a vector 
result <- sapply(v,addrand)

v<- c(1:5)

times2<-function(num){
  return(num*2)
}
print(v)

result<- sapply(v,times2)

print(result)


####apply with multiple inputs

v<- 1:5

add_choice <- function(num,choice){
return(num+choice)
}


print(sapply(v,add_choice, choice=100))

### anonymous function short hand usually for a single use 

v<- 1:5
result<- sapply(v,function(num){num*2})
print(result)
##### some math functions ######
#abs() computes absolute value
#sum() returns the sum of of all the values present in the input
#mean() computes the arithmetic mean
#round() rounds values (additional arguments to the nearest)
# r reference card 

abs(2)
abs(-2)
v<- c(-2,-3,0,4)
abs(v)

sum(v)
mean(v)
round(5.254, digits = 1)

## regular expressions 
#grepl - logical 
#grep - index

text <- "Hi there do you know who you are voting for?"
text

#returns boolean 
grepl("voting",text)
grepl("dog",text)
grepl("do you",text)

v<- c("a","b","c","d","d")
grepl("b",v)

#returns location 
grep("b",v)
grep("d",v)

# dates and time stamps

Sys.Date()
today<- Sys.Date()
class(today)

c <-"1-2-1990"
class(c)

my.date <- as.Date(c)
class(my.date)

 #  as.Date("Nov-3-1990") Non-standard needs reformatted

my.date <-as.Date("Nov-2-1990",format= "%b-%d-%Y") # reformatted date

my.date
as.Date("June,01,1957", format="%B,%d,%Y")
my.date

#POSIXct format R uses to store time information (Portable Operating System interface)

as.POSIXct("11:02:03",format="%H : %M : %S")

help("strptime") #gives time formatting code and details 

strptime("11:02:03",format="%H : %M : %S")


