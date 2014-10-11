#  Plotting Assignment 1 for Exploratory Data Analysis
data<-read.table("household_power_consumption.txt", header=TRUE, sep = ";", colClasses="character")
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data2<-data[data$Date > "2007-01-31" & data$Date < "2007-02-03",]

#start_date<-min(data2$Date) # Not needed just did this for a check

data2$Time<-strptime(paste(data2$Date,data2$Time), format="%Y-%m-%d %H:%M:%S")

plot(data2$Time, as.numeric(data2$Global_active_power), xlab= "", ylab="Global Active Power (kilowatts)", type = "l")
     
dev.print(png, file="plot2.png", width=480, height =480, units="px")


