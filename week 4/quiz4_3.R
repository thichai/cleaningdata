gdpData <- read.csv("data/quiz4_4gdp.csv")

unitedNames <- grep("^United", gdpData$X.2)
length(unitedNames)