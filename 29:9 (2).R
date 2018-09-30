#Array (take from Sir's code)

#Data Frame
#create vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30, mean=50, sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size = 30, replace = T, prob = c(.5,.5)))
rollno; sname; gender
marks; marks2; course

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
df1
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1)
summary(df1)
df1$gender