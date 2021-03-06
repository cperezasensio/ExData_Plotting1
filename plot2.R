#setwd("/home/jhernan/Desktop/tanya/exploratory_data_analysis/ExData_Plotting1")
table <- read.csv("household_power_consumption.txt", header=TRUE,sep=";", colClasses=c("character","character","numeric", "numeric", "numeric","numeric", "numeric", "numeric", "numeric"), na.string="?")
DateTime<-paste(table$Date, table$Time)
table$DateTime<-strptime(DateTime,"%d/%m/%Y %H:%M:%S")

filter=subset(table, Date=="1/2/2007"|Date=="2/2/2007")

png(filename="plot2.png",width=480,height=480)
with(filter, plot(x=DateTime, y=Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()

