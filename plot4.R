#  Plotting Assignment 1 for Exploratory Data Analysis
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", colClasses="character")
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data2<-data[data$Date > "2007-01-31" & data$Date < "2007-02-03",]
data2$Time<-strptime(paste(data2$Date,data2$Time), format="%Y-%m-%d %H:%M:%S")

png(file="plot4.png", width=480, height =480, units="px")
par(mfrow=c(2,2))

plot(data2$Time, as.numeric(data2$Global_active_power), xlab= "", ylab="Global Active Power", type = "l")

plot(data2$Time, as.numeric(data2$Voltage), xlab= "datetime", ylab="Voltage", type = "l")

plot(data2$Time, as.numeric(data2$Sub_metering_1), xlab= "", ylab="Energy sub metering", type = "l", col="black", lwd=1)
lines(data2$Time, as.numeric(data2$Sub_metering_2), col="red", lwd=1)
lines(data2$Time, as.numeric(data2$Sub_metering_3),  col="blue", lwd=1)
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty ="n", col=c("black","red", "blue"),lwd=1, cex=0.8)

plot(data2$Time, as.numeric(data2$Global_reactive_power), xlab= "datetime", ylab="Global_reactive_power", type = "l")
dev.off()
#dev.print(png, file="plot4.png", width=480, height =480, units="px")


