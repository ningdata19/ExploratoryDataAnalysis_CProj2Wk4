
setwd("C:\\Users\\Honey\\Documents\\Ningdata19\\Explore\\CProj2")


par(mar=c(5,5,2,2))


library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


NEIsub <- subset(NEI, fips == "24510")
baltAggre <- aggregate(NEIsub[c("Emissions")], list(type = NEIsub$type, year = NEIsub$year), sum)



png("plot3.png",width=550,height=450)


qplot(year, Emissions, data = baltAggre, color = type, geom= "line")+ ggtitle("Total PM2.5 Emissions in Baltimore City by Source Type") + xlab("Year") + ylab("PM2.5 Emissions")   


dev.off()