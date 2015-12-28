houseData <- read.csv("data/quiz4_1.csv")
splitNames <- strsplit(names(houseData), "wgtp")
splitNames[[123]]