library(wordcloud)
library(RMeCab)
library(Cairo)

RMeCabText.result<- RMeCabText('supermanR.txt')
print(RMeCabText.result)

RMeCabText.result2<-unlist(sapply(RMeCabText.result,"[[",1))
wordcloud(RMeCabText.result2,min.freq = 2,random.order = FALSE)
