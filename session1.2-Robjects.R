## Sesion 1.2 R objectssetwd("~/Desktop/SWC/swc")
gDat <- read.delim("gapminderDataFiveYear (1).txt")
gDat
str(gDat)
head(gDat)
head(gDat,n=10)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(gDat)
length(gDat)
summary(gDat)
plot(lifeExp ~ year, data=gDat)
plot (lifeExp ~ gdpPercap, data=gDat)
str(gDat)
gDat$lifeExp
summary (gDat$lifeExp)
hist(gDat$lifeExp)
hist(gDat$gdpPercap)
str(gDat)
## subset
subset(gDat, subset= country== "Cambodia")
subset(gDat, subset= country== "Cambodia","japan")
subset (gDat, subset=year<1957)
subset(gDat, subset=lifeExp<32)
subset (gDat, subset=lifeExp<32, select=c(country,lifeExp,pop))
myData<-subset (gDat, subset=lifeExp<32, select=c(country,lifeExp,pop))
myData
plot (lifeExp~year, data=gDat, subset=country=="Spain")
lm(lifeExp~year, data=gDat, subset=country=="Canada")
with (gDat, mean(lifeExp))
with (subset (gDat, subset=country=="Canada"), mean (lifeExp))
##
x <- 5
x
x <- c(3,5)
x[3] <- 4
x <- c(1,2,3,4,5,6)
x^2

