library(data.table)
library(sqldf)

options(sqldf.driver = "SQLite")

acs <- read.table("data/quiz2_2.csv", sep = ",", header = TRUE)


query1 <- sqldf("select pwgtp1 from acs where AGEP < 50")
