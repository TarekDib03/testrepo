library(datasets)
data(mtcars)
head(mtcars, 5)

library(ggplot2)
ggplot(aes(x=disp, y=mpg), data=mtcars) + geom_point() + ggtitle("Displacement vs Miles per Gallon") + labs(x = "Displacement", y = "Miles per Gallon")

mtcars$vs <- as.factor(mtcars$vs)
ggplot(aes(x=vs, y=mpg, fill = vs), data=mtcars) + 
  geom_boxplot(alpha = 0.3) + 
  theme(legend.position = "none")

ggplot(aes(x=wt), data = mtcars) + geom_histogram(binwidth = 0.5)

#data(iris)
#library(GGally)
#ggpairs(iris, mapping=ggplot2::aes(colour = Species))