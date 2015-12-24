gdpData <- read.csv("data/GDP.csv", skip = 5, nrows = 190, stringsAsFactors = F, header = F)
eduData <- read.csv("data/education.csv", stringsAsFactors = F)
gdpData <- gdpData[, c(1, 2, 4, 5)]
colnames(gdpData) <- c("CountryCode", "Rank", "Country.Name", "GDP.Value")
gdpData$GDP.Value <- as.numeric(gsub(",", "",gdpData$GDP.Value))

##Merge data
matchData <- merge(gdpData, eduData, by.x="CountryCode", by.y="CountryCode")
dim(matchData)[1]

arrange(matchData, desc(Rank))[13, 3]