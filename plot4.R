# Load and exec the file loadAndCleanData
# The code behind this file works to load the data
# and provide dataframe with only the data needed for the purpose
# That is, data for days 2007-02-01 and 2007-02-02
source("loadAndCleanData.R")

# Open device
png(filename = 'plot4.png')

# plot construction
par(mfrow = c(2,2))

##
# Top left
##
plot(subData$Time, subData$Global_active_power,
     ylab = 'Global Active Power', 
     xlab = '',
     type = 'l')

##
# Top right
##
plot(subData$Time, subData$Voltage,
     xlab = 'datetime', 
     ylab = 'Voltage', 
     type = 'l')

##
# Bottom left
##
plot(subData$Time, subData$Sub_metering_1, 
     type = 'l',
     xlab = '', 
     ylab = 'Energy sub metering')

lines(subData$Time, subData$Sub_metering_2, col = 'red')
lines(subData$Time, subData$Sub_metering_3, col = 'blue')

l <- c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
color <- c('black', 'red', 'blue') 

legend('topright', 
       legend = l,       
       col = color,
       lty = 'solid', 
       bty = 'n')

##
# Bottom right
##
plot(subData$Time, subData$Global_reactive_power,
     xlab = 'datetime', 
     ylab = 'Global_reactive_power', 
     type = 'l')

# Close device
dev.off()

