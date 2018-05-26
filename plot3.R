#this script generates plot3.png

source("helper.R")
house_power<-get_clean_exdata()

png(filename="plot3.png", width=480, height=480)
with(house_power, plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
points(house_power$datetime, house_power$Sub_metering_1, type="l")
points(house_power$datetime, house_power$Sub_metering_2, type="l", col="red")
points(house_power$datetime, house_power$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty="solid")
dev.off()