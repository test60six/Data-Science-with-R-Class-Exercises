#built in data frames

state.x77

USPersonalExpenditure

women 

data() #lists all built in data frames in R

WorldPhones

#data frame info 

head(state.x77)

tail(state.x77)

str(state.x77)

summary(state.x77)

# create own data frames from vector

days <- c("Mon","Tue","Wed","Thur","Fri")
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
data.frame(days,temp,rain)
df <-data.frame(days,temp,rain)
print(df)
str(df)
summary(df)

##data frame indexing and selection

print(df)

df[1,]
df[,1]

df
df[,"rain"]
df[1:5, c("days","temp")]

df$days
df$temp
df["days"]
# $ sign returns vector and [""] notation returns data frame format

#subset function 

subset(df,subset = rain==TRUE)

#data frame ordering

sorted.temp <- order(df["temp"])
print(sorted.temp)

df[sorted.temp,]
desc.temp <- order(-df["temp"])
print(desc.temp) 

desc.temp<- order(-df$temp)
print(desc.temp) 



 