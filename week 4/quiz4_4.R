gdpData <- read.csv("data/quiz4_4gdp.csv")
eduData <- read.csv("data/quiz4_4edu.csv")

##Merge data
matchData <- merge(gdpData, eduData, by.x="X", by.y="CountryCode")

specialNotes <- matchData$Special.Notes

fiscalYearEnd <- grep("Fiscal year end: June", specialNotes)
length(fiscalYearEnd)



