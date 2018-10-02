# library https://www.r-graph-gallery.com/196-the-wordcloud2-library/
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)
wordcloud2(demoFreq, size=1.6


# Gives a proposed palette
wordcloud2(demoFreq, size=1.6, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )

ww=wordcloud2(d, size = 1.6, shape= 'heart',color = rep_len(c("red","pink"), nrow(d)))
ww
# Change the background color
wordcloud2(demoFreq, size=1.6, , color=rep_len( c("pink","red"), backgroundColor="white")

# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'heart')
wordcloud2(d, size = 1.6, shape= 'heart',color = rep_len(c("red","pink")))
# Change the shape using your image
wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")


#Control the rotation of words with 3 arguments: minRotation, maxRotation and rotateRatio.
ww=wordcloud2(demoFreq, size = 2.3, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
ww


# Install
install.packages("tm")  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("RColorBrewer") # color palettes
# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

text <- readLines(file.choose())
docs <- Corpus(VectorSource(text))
inspect(docs)

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)
set.seed(1234)

           