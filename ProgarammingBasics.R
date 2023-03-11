#logical operators 

# & AND
# | OR
# ! NOT


x <- 10
x < 20
x> 5

print(x)

(x < 20) & (x > 5)

(x < 20) & (x > 5) & (x==10)

#returns false & requires all to be true to be output true 
(x < 20) & (x > 5) & (x==9)

TRUE & TRUE 
TRUE & FALSE 

x == 100 

x== 10


# or  | can return either 
(x==10)|(x==1000)

# not ! 

(10 ==1 )
# is this not true 
!(10==1)

(x==100)|(x==1000)

df <- (mtcars)
head(df)

df[df$mpg>20,]

df[df$mpg>20,"mpg"]

subset(df,mpg >20)

df[(df$mpg >20) & (df$hp > 100),]

df[(df$mpg >20) | (df$hp > 100),]

# if,else, else if statements 
x<- 13

if (x==10){
  # conditions
  print("x is equal to 10!")
}else if (x==12){
  print("x equal to 12")
}else{
  print("x not equal to 10 or 12")
  
}

hot<- FALSE
temp<- 100

if (temp>80){
  #execute if condition was TRUE
  print("temp greater than 80")
}

#example output 
hot<- FALSE
temp<- 10

if (temp>80){
  
  hot<-TRUE
}
print(hot)

#next example 
temp<- 30

if (temp>80){
  print("Hot Outside")
}else{ #we can get some output if the condition is not met
  print("temp is not greater than 80")
}

####
temp<- 45

if (temp>80){
  print("Hot Outside")

}else if (temp<=80 & temp >=50){
  print("Nice outside")
}else if (temp==45){
  print("it's exaclty 45 degrees outside!")
}else{
  print("It's less than 50 degrees outside and it's not excatly 45 degrees outside")
}


####

ham<- 10
cheese<- 10
report<- "blank"

if (ham >=10 & cheese >= 10){
  report <- "strong sales of ham and cheese"
}else if (ham ==0 & cheese==0){
  report <-"no sales today"
  
}else{
  report <- "we sold something today"
}

print(report)

### conditional statements training exercise 

x<- 1

if (x==1){
  print("hello")
}
###

x<- 13

if (x%%2==0){
  print("even")
}else{
  print("not even")
}

##
x<- matrix(c(1:50),nrow=10,byrow=TRUE)

if (is.matrix(x)){
  print("x is matrix")
}else 
  {print("not matrix")
  }

print(x)
##
x <- c(3,7,1)

if (x[1] > x[2]){
  #first and second place
  fir <- x[1]
  sec <- x[2]
} else {
  fir <- x[2]
  sec <- x[1]
}
if ( x[3] > fir & x[3] > sec ) {
  #3rd was largest
  thi <- sec
  sec <- fir
  fir <- x[3]
} else if ( x[3] < fir & x[3] < sec ) {
  #third was smallest
  thi <- x[3]
} else {
  thi <- sec
  sec <- x[3]
}

print(paste(fir, sec, thi))


##
x <- c(20, 10, 1)

if (x[1] > x[2] & x[1] > x[3] ) {
  print(x[1] )
} else if (x[2] > x[3] ) {
  print(x[2])
} else {
  print(x[3])
}

## While loops

x <- 0

while(x<10){
  print(paste0("x is:",x))
  x<- x+1
  if (x==10){
    print("x is now equal to 10! Break loop!")
    #manual break   
    break
    print("woo I prinited too!")
  }
}

## for loops 

v <- c(1,2,3)

for (variable in v){
  
  print(variable)
}


##
v <- c(1,2,3,4,5)

for (temp.var in v){  
  # execute code
  ## for every temp.var in v , do this
   print("hello")
}

###

v <- c(1,2,3,4,5)

for (temp.var in v){  
  result <- temp.var +1
  print("the temp.var plus oe is eaqual to:")
  print(result)
}

### list for loop 
my.list <- list(c(1,2,3),mtcars,12)

for (item in my.list){  
  
  print(item)
}


### matrix for loop 

mat<- matrix(1:25,nrow=5)
print(mat)

for (num in mat) {
  print(num)
  
}

## nested for loops

mat<- matrix(1:25,nrow=5)
print(mat)

for (row in 1:nrow(mat)) {
  for (col in 1:ncol(mat)){
    print(paste("the selected row is:", row))
    print(paste("the element at row:" ,row, "and col:",col,"is", mat[row,col]))
  }
  
}

#### Functions
#basic syntax
name_of_function <- function( input1,input2,input3=45){
  #code execute
  result <- input1 +input2
  return(result)
}

sum(c(1,2,3))

help(sum)

#no input function
hello <- function(){
  print("Hello")
}

hello()

# input function 
hello <- function(name){
  #executes when the function is called
  print(paste("Hello", name))
}

hello("Sammy")

# example - default param (name= Frank)
hello <- function(name="Frank"){
  
  print(paste("Hello", name))
}

hello("Sammy")

###########
add_num<- function(num1,num2){
  print(num1+num2)
}

add_num(4,5)

########

add_num<- function(num1,num2){
  my.sum<- num1+num2
 return(my.sum)
}

result<- add_num(4,5)
print(result)
print(result)

##### SCOPE #####
times5 <- function(num){
  my.result <- num *5
  return(my.result)
}
my.output <- times5(100)
print(my.output)

my.result #now this is no longer is scope of the function. now a global 


v<- "I'm a global variable"
stuff <- "I'm global stuff"

fun<- function(stuff){
  print(v)
  stuff <- "reassign stuff inside of this function fun"
  print(stuff)
}
 fun(stuff)
 
print(stuff)


#### Functions training exercise 
hello_you <- function(name){
  print(paste('Hello',name))
}
hello_you('Sam')

#

hello_you2 <- function(name){
  return(paste('Hello',name))
}


print(hello_you2('Sam'))
#
prod <- function(num1,num2)
  return(num1*num2)
prod(3,4)

#
num_check <- function(num,v){
  for (item in v){
    if (item == num){
      return(TRUE)
    }
  }
  return(FALSE)
}

num_check(2,c(1,2,3))
num_check(2,c(1,4,5))
#
num_count <- function(num,v){
  count = 0
  for (x in v){
    if (x == num){
      count = count + 1
    }
  }
  return(count)
}

num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

#

bar_count <- function(pack){
  amount_of_ones = pack %% 5
  amount_of_fives = (pack - amount_of_ones)/5
  return(amount_of_ones+amount_of_fives)
}


bar_count(6)
bar_count(17)

##

summer <- function(a, b, c){
  out <- c(0)
  if (a %% 3 != 0){
    out <- append(a,out)
  }
  if (b %% 3 != 0){
    out <- append(b,out)
  }
  if (c %% 3 != 0){
    out <- append(c,out)
  }
  return(sum(out))       
}

summer(7,2,3)
summer(3,6,9)
summer(9,11,12)

###


prime_check <- function(num) {
  if (num == 2) {
    return(TRUE)
  } else if (any(num %% 2:(num-1) == 0)) {
    return(FALSE)
  } else { 
    return(TRUE)
  }
}

prime_check(2)
prime_check(5)
prime_check(4)
prime_check(237)
prime_check(131)
