#this function reads the file and makes some simple conversions

get_clean_exdata<-function(){
        
        library(lubridate)
        library(dplyr)
        
        # load data into R
        data<-read.table(file="exdata/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors = FALSE)
        
        # change Date and Time format, create extra column DateTime
        data<-mutate(data, datetime = paste(Date,Time))
        data<-mutate(data, Date=dmy(Date), Time=hms(Time), datetime = dmy_hms(datetime))
        
        # change all other columns to numeric
        data<-mutate(data, Global_active_power=as.numeric(Global_active_power))
        data<-mutate(data, Sub_metering_1=as.numeric(Sub_metering_1))
        data<-mutate(data, Sub_metering_2=as.numeric(Sub_metering_2))
        data<-mutate(data, Sub_metering_3=as.numeric(Sub_metering_3))
        data<-mutate(data, Voltage=as.numeric(Voltage))
        data<-mutate(data, Global_reactive_power=as.numeric(Global_reactive_power))
        
        # subset data - only necessary dates
        data_sub<-subset(data, Date>= as.Date("2007-02-01", "%Y-%m-%d") & Date <= as.Date("2007-02-02", "%Y-%m-%d"))
        
}