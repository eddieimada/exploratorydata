data <- read.table(file = "household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalPower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()