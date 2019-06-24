myhousedata <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header=T, sep=';' , na.strings="?")
mine_data <- rbind(myhousedata[myhousedata$Date=="1/1/2007",], myhousedata[myhousedata$Date=="2/2/2007",])

## Create New Variable with Date 
mine_data$Date <- as.Date(mine_data$Date, format="%d/%m/%Y")


## Plot 2 code

plot(mine_data$Global_active_power ~ my_data$DateTime, type="1", xlab="", ylab="Global Actice Power(kilowatts)")
png("plot2.png", width = 480, height = 480)
dev.off()
