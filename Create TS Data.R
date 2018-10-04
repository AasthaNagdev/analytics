#Time Series (MULTIVARIATE)

# xts  - create object and export data


(dates=as.Date('2018-08-31') + seq(1,30,1))
(openprice = rnorm(30, mean=100, sd=30))
(closingprice=rnorm(30,mean = 110, sd=40))
(volume=rnorm(30,mean=1000,sd=300))
df1= data.frame(dates,openprice,closingprice,volume, stringsAsFactors = T)
df1

#Instead of creating a df, create a matrix with openprice, close price and volume and put dates as index i.e. row names.





















#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")