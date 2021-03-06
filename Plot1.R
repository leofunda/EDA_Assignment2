## Plot 1

if(!exists("NEI")){ 
  NEI <- readRDS("C:/Users/Leonardo/Desktop/ExploratoryDataAnalysis/Assignment2/summarySCC_PM25.rds") 
  } 
if(!exists("SCC")){ 
  SCC <- readRDS("C:/Users/Leonardo/Desktop/ExploratoryDataAnalysis/Assignment2/Source_Classification_Code.rds") 
  } 

aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum) 
png('plot1.png') 
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years')) 
dev.off() 
