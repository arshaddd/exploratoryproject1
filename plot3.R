myhousedata <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header=T, sep=';' , na.strings="?")
mine_data <- rbind(myhousedata[myhousedata$Date=="1/1/2007",], myhousedata[myhousedata$Date=="2/2/2007",])

## Create New Variable with Date 
mine_data$Date <- as.Date(mine_data$Date, format="%d/%m/%Y")

## plot 3 code

with(mine_data, {plot(sub_metering_1 ~ DateTime, type="1", xlab="", ylab="Energy Sub Metering")})
line(mine_data$sub_metering_2 ~ mine_data$DateTime, col = 'Green')
line(mine_data$sub_metering_3 ~ mine_data$DateTime, col = 'Red')
legend("topright", lty=1, lwd=3, col=c("black", "Green", "Red"), legend=c("sub_metering_1", "sub_metyering_2", "sub_metering_3"))

png("plot3.png", width = 480, height = 480)
dev.off()
