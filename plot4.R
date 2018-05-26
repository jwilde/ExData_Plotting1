#this script generates plot4.png

source("helper.R")

house_power<-get_clean_exdata()

png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(house_power$datetime, house_power$Global_active_power, type="l", ylab="Global Active Power", xlab="")

with(house_power, plot(datetime, Voltage, type="l"))

with(house_power, plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
points(house_power$datetime, house_power$Sub_metering_1, type="l")
points(house_power$datetime, house_power$Sub_metering_2, type="l", col="red")
points(house_power$datetime, house_power$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty="solid", bty="n")

with(house_power, plot(datetime, Global_reactive_power, type="l"))
dev.off()