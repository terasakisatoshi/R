library(wordcloud)
library(RMeCab)
library(Cairo)

RMeCabText.result<- RMeCabText('supermanR.txt')
#RMeCabText.result<-RMeCabText('eng.txt')
#test 
head(RMeCabText.result,5)

RMeCabText.result.2 <- unlist(sapply(RMeCabText.result,"[[",1))

head(RMeCabText.result.2,5)



#par(family = "HiraKakuProN-W3")
#wordcloud(RMeCabText.result.2,min.freq=2,random.order=FALSE)
library(Cairo)
cairo_ps("test.eps", family = "HiraKakuProN-W3")
plot(rnorm(100),main='はああああ')
dev.off()