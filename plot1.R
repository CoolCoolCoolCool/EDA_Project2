NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

require(plyr)
res <- ddply(NEI,'year',function(df){sum(df$Emissions)})

png(filename='plot1.png')
plot(res,pch=20,col='red',cex=2,main='Total emissions from PM2.5 from 1999 to 2008',
     xlab='Year',ylab='Total emissions (tons)')
abline(lm(res$V1~res$year))
dev.off()