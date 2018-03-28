setwd("C:\\Users\\Honey\\Documents\\Ningdata19\\Explore\\CProj2")

par(mar=c(5,5,2,2))


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEIsub <- subset(NEI, fips == "24510" & type=="ON-ROAD")
Balt.aggre <- aggregate(NEIsub[c("Emissions")], list(type = NEIsub$type, year = NEIsub$year, zip = NEIsub$fips), sum)


png("plot5.png",width=580,height=450,units="px",bg="transparent")

qplot(year, Emissions, data = Balt.aggre, geom= "line") + theme_gray() + ggtitle("Motor Vehicle-Related Emissions in Baltimore City") + xlab("Year") + ylab("Emission Levels")


dev.off()