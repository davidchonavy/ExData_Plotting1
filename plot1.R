library(readr)
household_power_consumption <- read_delim("household_power_consumption.txt",";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"),Time = col_time(format = "%H:%M:%S")),trim_ws = TRUE)
hwset_wk1<-household_power_consumption[household_power_consumption$Date>='2007-02-01',]
hwset_wk1<-hwset_wk1[hwset_wk1$Date<'2007-02-03',]
hist(hwset_wk1$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")