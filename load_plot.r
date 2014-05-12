
w_ds <- read.csv(file_name, header = TRUE, sep = ";")
w_ds$Date <- as.Date(w_ds$Date, format="%d/%m/%Y")
sub_ds <- (w_ds,w_ds$Date<="2007-02-02" & w_ds$Date>="2007-02-01")
sub_ds$Global_active_power<- as.numeric(sub_ds$Global_active_power)
sub_ds$Sub_metering_1 <- as.numeric(sub_ds$Sub_metering_1)
sub_ds$Sub_metering_2 <- as.numeric(sub_ds$Sub_metering_2)
sub_ds$Sub_metering_3 <- as.numeric(sub_ds$Sub_metering_3)
sub_ds$Global_reactive_power <- as.numeric(sub_ds$Global_reactive_power)
sub_ds$Voltage <- as.numeric(sub_ds$Voltage)
sub_ds$Global_intensity <- as.numeric(sub_ds$Global_intensity)

sub_ds$date_time<-as.POSIXct(paste(sub_ds$Date,sub_ds$Time))
plot(sub_ds$date_time,as.numeric(sub_ds$Global_active_power),type="l")
str(sub_ds)
colnames(sub_ds)



png("plot1.png", width=480, height=480)
hist(sub_ds$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.off()


png("plot2.png", width=480, height=480)
plot(sub_ds$date_time,sub_ds$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatt)")
dev.off()

 legend("topright",cex=0.7, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

png("plot3.png", width=480, height=480)
plot(sub_ds$date_time,sub_ds$Global_active_power,type="l",xlab="",ylab="Energy sub metering",le)
dev.off()



load_file <- function(load_file="household_power_consumption.txt",type="csv") {

}
