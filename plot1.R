#this script generates plot1.png

source("helper.R")
house_power<-get_clean_exdata()

png(filename="plot1.png", width=480, height=480)
hist(house_power$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()