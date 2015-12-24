library(data.table)
houses <- read.table("data/quiz1.csv", sep = ",", header = TRUE)
millionhouse <- subset(houses, VAL==24 )
millionhouse
nrow(millionhouse)