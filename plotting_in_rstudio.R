library(datasets)
#Load Data from dataset mtcars
data("mtcars")
#View first 5 rows
head(mtcars, 5)

#load ggplot package; if package is missing use Tools-> Install packages option in RStudio to install the missing package
library(ggplot2)
# Create a Scatterplot of displacement (disp) and miles per gallon (mpg); geom_point() for Scatterplot
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add plot title
ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle("Displacement vx Miles/Gallon")
#Change axis names
ggplot(aes(x=disp, y=mpg,), data=mtcars)+geom_point()+ggtitle("Displacement vs Miles/Gallon")+labs(x="Displacement", y="Miles/Gallon")

#make vs(Engine variable of mtcars) a factor
mtcars$vs <- as.factor(mtcars$vs)

#Create Boxplot of the distribution for v-shaped and straight engine; geom_boxplot() for Box Plot
ggplot(aes(x=vs, y=mpg), data = mtcars)+geom_boxplot()

#add color to boxplot
ggplot(aes(x=vs, y=mpg, fill=vs), data = mtcars) + geom_boxplot(alpha=0.3)+theme(legend.position="none")

#Create a Histogram of variable weight wt; geom_histogram() for Histogram
ggplot(aes(x=wt),data=mtcars)+geom_histogram(binwidth=0.5)
       
#Using GGally library
library(datasets)
data(iris)

library(GGally)
ggpairs(iris, mapping=ggplot2::aes(color = Species))
