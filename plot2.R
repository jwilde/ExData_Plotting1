#this script generates plot2.png

source("helper.R")

house_power<-get_clean_exdata()

png(filename="plot2.png", width=480, height=480)
plot(house_power$datetime, house_power$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()