library(readr)
household_power_consumption <- read_delim("household_power_consumption.txt",";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"),Time = col_time(format = "%H:%M:%S")),trim_ws = TRUE)
hwset_wk1<-household_power_consumption[household_power_consumption$Date>='2007-02-01',]
hwset_wk1<-hwset_wk1[hwset_wk1$Date<'2007-02-03',]
plot(strptime(paste(hwset_wk1$Date,hwset_wk1$Time,sep=" "),"%Y-%m-%d %H:%M:%S"),hwset_wk1$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(strptime(paste(hwset_wk1$Date,hwset_wk1$Time,sep=" "),"%Y-%m-%d %H:%M:%S"),hwset_wk1$Sub_metering_2,type="l",col="red")
lines(strptime(paste(hwset_wk1$Date,hwset_wk1$Time,sep=" "),"%Y-%m-%d %H:%M:%S"),hwset_wk1$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
