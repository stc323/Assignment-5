rm(list=ls(all=TRUE))
cat("\014")

header <- read.table("CHNCPIALLMINMEI.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("CHNCPIALLMINMEI.csv",
                                 skip=1, sep=",",header=FALSE,
                                 data.table=FALSE)
setnames(DF, colnames(header))
rm(header)

View(DF)
str(DF)

summary(DF)
