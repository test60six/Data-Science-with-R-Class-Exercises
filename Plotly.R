install.packages("plotly")
library(plotly)
library(ggplot2)

pl<-ggplot(mtcars,aes(mpg,wt)) +geom_point()

gpl<-ggplotly(pl)
print(gpl)
