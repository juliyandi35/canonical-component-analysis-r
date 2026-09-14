library(readxl)
Data <- read_excel("data TA.xlsx",sheet = "gabungan")
names(Data)
head(Data)

Data <- data.frame(Data)

X.Data <- Data[,4:36]
Y.Data <- Data[,37:49]

library(CCA)
correl.Data <- matcor(X.Data, Y.Data )
img.matcor(correl.Data, type = 2)
