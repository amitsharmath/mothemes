library(ggplot2)
library(dplyr)

baseplot<-function(){
  data(mtcars)
  mtcars%>%ggplot()+geom_point(mapping = aes(mpg, disp))
}

facetplot<-function(){
  data(mtcars)
  mtcars%>%ggplot()+geom_point(mapping = aes(mpg, disp)) + facet_grid(facets = cyl~gear,labeller = label_both,switch = "y")
}
