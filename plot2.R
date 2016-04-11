source("loading data.R")

##Turning png device on
png(filename = "plot2.png", width = 480, height = 480)

##Making the plot graph
plot(x = hc1$Date, y = hc1$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts", type = 1)

##Turning device off
dev.off()