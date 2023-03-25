library(dplyr)
df<- mtcars
##multiple assignments 
result<- arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg)) #reads from inside out.hard to read and understand

print(result)

#better way but memory heavy and not great
a<-filter(df,mpg>20)
b<- sample_n(a,size=5)
result<-arrange(b,desc(mpg))

print(result)

## pipe operator for multiple assignments  data %>% op1 %>% op2 %>% op3
df%>%filter(mpg>20)%>%sample_n(size=5)%>%arrange(desc(mpg))

print(result)

##### dplyr training exercise 
library(dplyr)

head(mtcars)

df2<-mtcars

head(df2)
filter(df2,mpg>20,cyl==6)

head(arrange(df2,cyl,desc(wt)))

head(select(df2,mpg,hp))

head(distinct(df2,gear))

head(mutate(df2,perfomance= hp/wt))


summarise(df2,total_mpg=mean(mpg,na.rm=TRUE))


df2%>%filter(cyl==6)%>%summarise(avg_hp=mean(hp))
