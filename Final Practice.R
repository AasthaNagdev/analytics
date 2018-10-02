#Create vectors and convert to DF
#Convert relevant columns to factors
#Summarise
#Plot
#Filter/ Search: Top students 1 male and 1 female who has highest exp in each spl
#Store data in CSV
#Open CSV in Excel
#Do clustering for the variables you can
#Do decision tree
#FDo logistic reg
#Do graph plots
#Do reg

(gender = sample(c('M','F'), size=100, replace=T, prob=c(.7,.3)))
gender= factor(gender)
(spl = sample(c('MKt','Fin','HR'), size=100, replace=T, prob=c(.4,.4,.2)))
spl=factor(spl)
(age = sample(c(21:30), size=100, replace=T))
(exp = floor(rnorm(100, mean=4, sd=1)))
grade<-sample(c('A','B','C','D'), size = 100, replace = T, prob = c(.4,.2,.3,.1))
grade
(grade = factor(grade, ordered = T, levels = c('D','C','B','A')))
(plcmt = sample(c('Y','N'), size=100, replace=T, prob=c(.5,.5)))
plcmt=factor(plcmt)

#creating the DF
df1= data.frame(gender, spl, age, exp, grade, plcmt, stringsAsFactors = T)
df1
summary(df1)

plot(df1)
write.csv(df1, file = './DATA/FinalPractice.csv')

library(dplyr)
df1 %>% group_by(spl, gender) %>% summarise(mean(exp), max(exp), mean(age))
df1 %>% filter(spl=='MKt' & gender == 'F' & grade== 'A') %>% group_by(spl) %>% summarise(mean(exp), mean(age))
df1 %>% group_by(spl,gender) %>% arrange(spl,gender,exp) %>% top_n(1,exp)


#Draw few graphs to understand distribution of data
hist(df1$age)
t1=table(df1$plcmt)
t1
pie(t1)
barplot(t1)
barplot(t1, col=1:2)
pairs(df1[,c('age','exp')])

par(mfrow=c(1,1))
pie(table(df1$gender))
pie(table(df1$plcmt))

table(df1$gender, df1$plcmt, df1$spl)

#Clustering
library(cluster)
library(fpc)

data(df1)
head(df1)
# Kmeans cluster analysis
km3 =  kmeans(df1[,c('age','exp')], centers=3)
km3
km3$centers
plotcluster(df1[,c('age','exp')], km3$cluster)

#Decision Tree
library(rpart)
library(rpart.plot)
tree <- rpart(plcmt~., data = df1)
tree
rpart.plot(tree, cex=.8,nn=T)
printcp(tree)
prune(tree, cp=.03)

ndata= sample_n(df1, 5)
ndata       
predict(tree, newdata= ndata, type='class')
predict(tree,newdata= ndata, type='prob')
