library(Hmisc)
matchData$Rank.Group <- cut2(matchData$Rank, g = 5)
table(matchData$Income.Group, matchData$Rank.Group)