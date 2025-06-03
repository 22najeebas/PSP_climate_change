getwd()
setwd("/Users/najeebashaikh/Desktop/PINC_Summer_2025/")

#Dont forget the quotations around the file
read.csv("beach_data.csv")
beach <- read.csv("beach_data.csv")

#wrong code, R will not understand
barplot$weight
#include paranthesis, file name,$, and weight. $ = all the values from the weight column
barplot(beach$Weight)
#beach is the data set
#barplot is the function
#Weight is the particular column we need for the graph
#$ are all the values from the weight column

#QUESTION 1: What is the standard deviation of the weight?
sd(beach$Weight)

#QUESTION 2: plot the weight using the barplot() function
barplot(beach$Weight)

#QUESTION 3: Plot the barplot with Sample names
#barplot(argument, names = )
barplot(beach$Weight, names = beach$Sample)

#add color
barplot(beach$Weight, names = beach$Sample,col = "pink")

#time for stats, Question 6: is there a difference in weight between animals?
diff(beach$Weight)
mean(beach$Weight)
aov(beach$Weight~beach$Animal)
summary(aov(beach$Weight~beach$Animal))

#BONUS QUESTION: Is there a difference in weight between tidal zones?
aov(beach$Weight~beach$Zone)
