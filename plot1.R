#  Plotting Assignment 1 for Exploratory Data Analysis
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", colClasses="character")
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data2<-data[data$Date > "2007-01-31" & data$Date < "2007-02-03",]
hist(as.numeric(data2$Global_active_power), col= "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.print(png, file="plot1.png", width=480, height =480, units="px")


