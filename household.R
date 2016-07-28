setwd("C:/Users/jasonc/Dropbox/DataYada/DataScienceSpec/Exploratory/ExData_Plotting1")

household = read.table("household_power_consumption-2007-02-01_and_02.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
household$Time = strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
household$Date = as.Date(household$Date, format="%d/%m/%Y")

png("plot1.png", width=480, height=480)
hist(household$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts", ylab="Frequency", col="red")
dev.off()

png("plot2.png", width=480, height=480)
plot(household$Time, household$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

png("plot3.png", width=480, height=480)
plot(household$Time, household$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(household$Time, household$Sub_metering_2, type="l", col="red")
lines(household$Time, household$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(household$Time, household$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(household$Time, household$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(household$Time, household$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(household$Time, household$Sub_metering_2, type="l", col="red")
lines(household$Time, household$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(household$Time, household$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()