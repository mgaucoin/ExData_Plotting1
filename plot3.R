#  Plotting Assignment 1 for Exploratory Data Analysis
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", colClasses="character")
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data2<-data[data$Date > "2007-01-31" & data$Date < "2007-02-03",]

#start_date<-min(data2$Date) # Not needed just did this for a check

data2$Time<-strptime(paste(data2$Date,data2$Time), format="%Y-%m-%d %H:%M:%S")

plot(data2$Time, as.numeric(data2$Sub_metering_1), xlab= "", ylab="Energy sub metering", type = "l", col="black", lwd=1)
lines(data2$Time, as.numeric(data2$Sub_metering_2), col="red", lwd=1)
lines(data2$Time, as.numeric(data2$Sub_metering_3),  col="blue", lwd=1)
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"),lwd=1)


dev.print(png, file="plot3.png", width=480, height =480, units="px")


