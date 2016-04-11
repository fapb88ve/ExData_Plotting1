source("loading data.R")

##Turning png device on
png(filename = "plot1.png", width = 480, height = 480)

##Making the hist graph
hist(x = hc1$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

##Turning device off
dev.off()