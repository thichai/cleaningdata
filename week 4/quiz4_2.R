gdpData <- read.csv("data/quiz4_2.csv", skip = 5, nrows = 190, stringsAsFactors = F, header = F)
gdpData <- gdpData[, c(1, 2, 4, 5)]
colnames(gdpData) <- c("CountryCode", "Rank", "Country.Name", "GDP.Value")
gdpData$GDP.Value <- as.numeric(gsub(",", "",gdpData$GDP.Value))
average <- mean(gdpData$GDP.Value)
average