## Plot 1 Code

myhousedata <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header=T, sep=';' , na.strings="?")
mine_data <- rbind(myhousedata[myhousedata$Date=="1/1/2007",], myhousedata[myhousedata$Date=="2/2/2007",])

## Create New Variable with Date 
mine_data$Date <- as.Date(mine_data$Date, format="%d/%m/%Y")

##Ploting Code for Plot 1
hist(mine_data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
png("plot1.png", width = 480, height = 480)
dev.off()
