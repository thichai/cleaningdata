library(data.table)
library(sqldf)

options(sqldf.driver = "SQLite")

acs <- read.table("data/quiz2_2.csv", sep = ",", header = TRUE)


query1 <- sqldf("select pwgtp1 from acs where AGEP < 50")

gold <- unique(acs$AGEP)
query1 <- sqldf("select distinct AGEP from acs")
query2 <- sqldf("select AGEP where unique from acs")
query3 <- sqldf("select unique * from acs")
query4 <- sqldf("select unique AGEP from acs")
identical(gold, query1)
identical(gold, query2)
identical(gold, query3)
identical(gold, query4)
