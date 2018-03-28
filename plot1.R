setwd("C:\\Users\\Honey\\Documents\\Ningdata19\\Explore\\CProj2")
library("data.table")

par(mar=c(5,5,2,2))


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

data <- with(NEI, aggregate(Emissions, by = list(year), sum))

png("plot1.png",width=480,height=480)


plot(data, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", 
     ylab = "PM2.5 Emissions", pch = 19, col = "darkblue", lty = 6)

dev.off()