households <- read.csv("data/quiz3_1.csv")
agricultrueLogical <- households$ACR == 3 & households$AGS == 6
which(agricultrueLogical)