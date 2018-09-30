#mtcars linear regression (to select the significant variables out of a large no.)
#installed olsrr package
library(olsrr)

#the reg model
model <- lm(mpg ~ disp +hp + wt+ qsec, data= mtcars) 
k <- olsrr::ols_step_all_possible(model) #to check all possible combos of indep variables
k
# Pick the model with the max adj R square value which is the 11th one here.


#To check which model is better, ANOVA tables
(m1= lm(mpg ~ wt, data = mtcars))
(m2= lm(mpg ~ hp+ wt+ qsec, data = mtcars))
summary(m1)
summary(m2)
anova(m1,m2)

#H0: model m1 is better
#H1: model m2 is better
#We reject H0 cause p-value of f statistic is less than 0.05, so model m2 is better.



