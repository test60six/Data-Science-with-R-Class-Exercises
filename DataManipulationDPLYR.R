##Dplyr
##install.packages("nycflights13")
install.packages("dplyr")
install.packages("nycflights13")

library(dplyr)
library(nycflights13)

head(flights)
summary(flights)
##filter - returns specifics with absolute values
head(filter(flights,month==11,day==3,carrier=="AA"))
##slice  - takes a slice of the data eg 1:10 is first 10 rows
slice(flights,1:10)
##arrange - reorders rows 
head(arrange(flights,year,month,day,desc(arr_time)))
##select - zoom in on useful subset
head(select(flights,carrier,arr_time,month))
##rename -   allows to quickly rename columns pass in new first followed by old
head(rename(flights, airline_carrier = carrier))
##distinct - return unique vals 
distinct(select(flights,carrier))
##mutate - can create new cols with functionality. will return whole data set with new col
head(mutate(flights,new_col = arr_delay-dep_delay))
##trans mutate - returns only new col created  
head(transmute(flights,new_col = arr_delay-dep_delay))
##summarize - groups by aggregate  ((na.rm=TRUE removes na values part of means function))
 summarise(flights, avg_air_time=mean(air_time,na.rm=TRUE))
 
 summarise(flights, total_air_time=sum(air_time,na.rm=TRUE))
## Sample_n and sample_frac - take a number of rows or a fraction of rows 
sample_n(flights,10) #returns number
sample_frac(flights,0.1) #returns percentage 
