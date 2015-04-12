hc<-read.table("household_power_consumption.txt", header=TRUE,sep=";",colClasses=c("character","character",rep("numeric",7)),na="?")
hcsubset<-subset(hc,Date=="1/2/2007"|Date=="2/2/2007")
hist(hcsubset$Global_active_power, main="Global Active Power",xlab="Global Active Power(kilowatts)",col = "Red")

