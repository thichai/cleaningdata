library(quantmod)
amzn <- getSymbols("AMZN", auto.assign=FALSE)
sampleTimes = index(amzn)

sample2012 <- grep("2012", sampleTimes, value=TRUE)
length(sample2012)


mondaySamples <- sampleTimes[which((year(sampleTimes) == "2012") & (weekdays(sampleTimes) == "Monday"))]
length(mondaySamples)