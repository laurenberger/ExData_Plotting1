#read file
file <- "./household_power_consumption.txt"
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetted <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#make plot 1
gap <- as.numeric(subsetted$Global_active_power)
hist(gap, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts")

#save plot 1
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()