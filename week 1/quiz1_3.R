library(xlsx)
colIndex <- 7:15
rowIndex <- 18:23

dat <- read.xlsx("data/quiz1_3.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)
sum(dat$Zip*dat$Ext,na.rm=T)