#assignment 6.1

bank <- read.csv("C:/Users/mudassar/Desktop/farha/bank.csv", sep=";")   
View(bank)

#Perform the below operations:  
#a. Create a visual for representing missing values in the dataset.

# Load mice package for Multivariate Imputation by Chained Equations (MICE)
install.packages("mice")
library(mice)


# Load VIM package for Visualization and Imputation of Missing Values
install.packages("VIM")
library(VIM)

#The mice package provides a function md.pattern() to get a better 
#understanding of the pattern of missing data
md.pattern(bank)

aggr_plot= aggr(bank, col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE, labels=names(bank), cex.axis=.7, gap=3, ylab=c("Histogram of missing data","Pattern"))


#b. Show a distribution of clients based on a Job. 
counts= table(bank$job)
counts
bar= barplot(counts , main = "Bar plot of Jobs", xlab = "Jobs" , ylab = "Numbers" , col = heat.colors(12))

#c. Check whether is there any relation between Job and Marital Status? 
chisq.test(bank$marital , bank$job )
Conclusion:
  There is a relation between Job and Marital Status.
#now as we can see p value is nearly 0 or less which is henceforth less than 0.05 
#p value<0.05 hence we will reject the null hypo and accept the alternative hypothesis
#which says that There is relation between job and marital status


#d. Check whether is there any association between Job and Education? 
chisq.test(bank$education , bank.$job )
Conclusion:
  There is a relation between Job and Education.
#p value<0.05 hence we will reject the null hypo and accept the alternative hypothesis
#which says that There is association between job and education
