#Factors
?factor
grades<-sample(c('A','B','C','D'), size = 30, replace = T, prob = c(.4,.2,.3,.1))
grades

(gradesF = factor(grades))

summary(grades)
summary(gradesF)

table(grades)
table(gradesF)

class(gradesF)
(gradesfO = factor(grades, ordered=T))
(gradesFO1 = factor(grades, ordered = T, levels = c('B','C','A','D')))
summary(gradesFO1)

(marks= ceiling(rnorm(30, mean=60, sd=5)))
(student1 = data.frame(marks, gradesFO1))
boxplot(marks ~ gradesFO1, data=student1 ) #to check distribution of data among various variables A,B,C,D.

(gender = factor(sample(c('M','F'), size = 30, replace=T)))
(student1 = data.frame(marks,gender, gradesFO1))

boxplot(marks~gradesFO1+gender, data=student1)

