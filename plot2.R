data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors=FALSE)
data2<-subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")
datetime <- strptime(paste(data2$Date,data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()