source("loading data.R")

##Turning png device on
png(filename = "plot4.png", width = 480, height = 480)

##Adjusting space for four graphs
par(mfrow = c(2, 2)) 

##Making the plot graph
plot(hc1$Time, hc1$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(hc1$Time, hc1$Voltage, type="l", xlab="hc1$Time", ylab="Voltage")

plot(hc1$Time, hc1$Sub_metering_1, type="l", ylab="Energy hc1$Sub_metering_", xlab="")
lines(hc1$Time, hc1$Sub_metering_2, type="l", col="red")
lines(hc1$Time, hc1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(hc1$Time, hc1$Global_reactive_power, xlab="hc1$Time", ylab="Global_reactive_power")
##Turning device off
dev.off()