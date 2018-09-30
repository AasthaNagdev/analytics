# Data Structures in R
# ctrl+enter when you are in the line to execute

# Vectors----
x=1:10  #create sequence of nos from 1 to 10
x   

x1 <- 1:20
x1

(x1=1:30) #to assign and print values in one go

(x2=c(1,2,13,4,5))

(x3=letters[1:10])

(x3b=c('a',"Dhiraj","4"))

LETTERS[1:26]

(x4=c(T,FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)
x5a=c(3,5)
class(x5a)
(x5b=c(1,'a',T,4L))
class(x5b)


# access elements
(x6 = seq(0,100,3))
length(x6) #to find no. of elements in the vector
x6[20] #to find 20th element
x6[3]  #to find 3rd element
x6[c(2,4)]  # to find 2nd and 4th element
x6[-1]  # to access all but the first element
x6[c(2,-4)] # cant use positive and negative together
x6[-c(1:10)] #to access all but 1 to 10th value
x6[c(2.4,3.54)] # real numbers are truncated to integers
x6[-(length(x6)-1)] # to get all but second last

(x7 = c(x6, x2)) # to combine 2 vectors into a new vector

sort(x6) #will give in increasing order
sort(x6[-c(1,2)])
sort(x6, decreasing = T) #will give in decreasing order
rev(x6)

(x = -3:2)
x[2] <- 0;x  # modify 2nd element
#[1] -3 0 -1 0 1 2
x
x < 0
x[x<= 1& x >= -1] = 100; x #modify elements less than 0

x = x[1:4]; x   #truncate x to first 4 elements










(x = rnorm(100)) #get 100 values with mean=0 and std dv= 1
plot(density(x))
mean(x)
(x1 = rnorm(1000, mean=50, sd=5))
plot(density(x1))
mean(x1)
abline(v=mean(x1), h=0.04) 


# Matrices----
1:12
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, ncol=3, byrow=T))
x=101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)


m1

# access elements of a matrix
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]









#Vector to Matrix
(m3 = 1:24)
dim(m3)= c(6,4)
m3


m1











#modify vector
m2
m2[2,2]
m2[2,2]=10   
m2   
rbind(m2, c(50,60,70))
m2
cbind(m2, c(55,65,75,85))


m2
#row and col wise summary
m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)

t(m1) #transpose a matrix
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN = "+") #ROW WISE
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN = "*") #column wise


#addmargins
m1
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,1,sd) #colwise function












# Arrays----

# Data Frame----

# Factors----