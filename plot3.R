hc<-read.table("household_power_consumption.txt", header=TRUE,sep=";",colClasses=c("character","character",rep("numeric",7)),na="?")
hcsubset<-subset(hc,Date=="1/2/2007"|Date=="2/2/2007")
hcsubset$DateTime <- as.POSIXct(paste(hcsubset$Date, hcsubset$Time), format="%d/%m/%Y %H:%M:%S")
plot(hcsubset$DateTime,hcsubset$Sub_metering_1, type="l", main="", 
     xlab="", ylab="Energy sub metering")
lines(hcsubset$DateTime,hcsubset$Sub_metering_2,col="Red" )
lines(hcsubset$DateTime,hcsubset$Sub_metering_3,col="Blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex= .8, lty=1, col=c("black","red","blue"))
