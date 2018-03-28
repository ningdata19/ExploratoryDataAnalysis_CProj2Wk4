setwd("C:\\Users\\Honey\\Documents\\Ningdata19\\Explore\\CProj2")

library("data.table")

par(mar=c(5,5,2,2))



NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


NEIsub <- subset(NEI, fips == "24510")
BaltCity <- tapply(NEIsub$Emissions, NEIsub$year, sum)


png("plot2.png",width=500,height=480)


plot(BaltCity, type = "o", main = "Total PM2.5 Emissions in Baltimore City", xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "firebrick1", lty = 5)

dev.off()