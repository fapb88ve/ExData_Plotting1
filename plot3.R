source("loading data.R")

##Turning png device on
png(filename = "plot3.png", width = 480, height = 480)

##Making the plot graph
plot(x = hc1$Time, y = hc1$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(x = hc1$Time, y = hc1$Sub_metering_2, type="l", col="red")
lines(x = hc1$Time, y = hc1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
##Turning device off
dev.off()