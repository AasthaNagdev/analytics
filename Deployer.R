#DATA ANALYSIS USING DEPLOYER

install.packages(dplyr)
library(dplyr)

mtcars #generated data frame

#TWO WAYS TO FILTER DATA
1. dplyr::filter(mtcars, mpg>25 & am==1)

2. mtcars %>% filter(mpg>25 & am==0) #did not get results cause no data like this
   mtcars %>% filter(mpg>25 & am==1)
#2nd method is better cause can apply sort filter in same line

   mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt)   #sorting by wt
   mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% summarise(n()) 
   mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% count() 

#Filter----
   filter(mtcars, cyl == 8)
   filter(mtcars, cyl < 6)
   
   # Multiple criteria
   filter(mtcars, cyl < 6 & vs == 1)
   filter(mtcars, cyl < 6 | vs == 1)
   
   # Multiple arguments are equivalent to and
   filter(mtcars, cyl < 6, vs == 1)
   
   
   filter(mtcars, row_number() == 1L)
   filter(mtcars, row_number() == n())
   filter(mtcars, between(row_number(), 5, n()-2))
   
   
   
   
   
   #Grouping data
mtcars %>% group_by(am) %>% summarise(mean(mpg))
   
   
   
   
   
      