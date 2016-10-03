data = read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsettedData<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
dateTime <- strptime(paste(subsettedData$Date, subsettedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_Power <- as.numeric(subsettedData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime , Global_active_Power , type="l" , xlab="" , ylab="Global Active Power(kilowatts)")
dev.off()