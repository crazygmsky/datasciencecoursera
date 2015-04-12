hc<-read.table("household_power_consumption.txt", header=TRUE,sep=";",colClasses=c("character","character",rep("numeric",7)),na="?")
hcsubset<-subset(hc,Date=="1/2/2007"|Date=="2/2/2007")
hcsubset$DateTime <- as.POSIXct(paste(hcsubset$Date, hcsubset$Time), format="%d/%m/%Y %H:%M:%S")
plot(hcsubset$DateTime,hcsubset$Global_active_power, type="l", main="", 
     xlab="", ylab="Global Active Power(kilowatts)")