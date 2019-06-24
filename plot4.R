myhousedata <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header=T, sep=';' , na.strings="?")
mine_data <- rbind(myhousedata[myhousedata$Date=="1/1/2007",], myhousedata[myhousedata$Date=="2/2/2007",])

## Create New Variable with Date 
mine_data$Date <- as.Date(mine_data$Date, format="%d/%m/%Y")

par(mfrow=c(2,2))
plot(mine_data$Global_active_power ~ my_data$DateTime, type="1")
plot(mine_data$Voltage ~ my_data$DateTime, type="1")

with(mine_data, {plot(sub_metering_1 ~ DateTime, type="1")})
line(mine_data$sub_metering_2 ~ mine_data$DateTime, col = 'Green')
line(mine_data$sub_metering_3 ~ mine_data$DateTime, col = 'Red')

plolt(mine_data$Global_reactive_power ~ mine_data$DateTime, type="1")

png("plot4.png", width = 480, height = 480)
dev.off()

