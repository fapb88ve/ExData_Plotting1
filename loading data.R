#Takes the URL, downloads the file, and unzips into the Working Directory.
link <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download(link, destfile = "EPC.zip")
unzip("EPC.zip")

## Loads only the desired rows from data set into r
five_rows <- read.table("household_power_consumption.txt", nrows = 5, header = TRUE, sep = ";")
cla <- sapply(five_rows, class)
hc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = cla, na="?", stringsAsFactors=FALSE)
rm(five_rows)
rm(cla)

##Formatting time and date
hc$Time <- strptime(paste(hc$Date, hc$Time), format = "%d/%m/%Y %H:%M:%S")
hc$Date <- as.Date(hc$Date, format="%d/%m/%Y")

##Subsetting
hc1 <- subset(hc, Date >= as.Date("2007-02-01", "%Y-%m-%d") & Date <= as.Date("2007-02-01", "%Y-%m-%d"))





