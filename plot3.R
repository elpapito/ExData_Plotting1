# Load and exec the file loadAndCleanData
# The code behind this file works to load the data
# and provide dataframe with only the data needed for the purpose
# That is, data for days 2007-02-01 and 2007-02-02
source("loadAndCleanData.R")

# Open device
png(filename = 'plot3.png')

# Plot construction
plot(subData$Time, subData$Sub_metering_1, 
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering')

# Set vertical lines
lines(subData$Time, subData$Sub_metering_2, col = 'red')
lines(subData$Time, subData$Sub_metering_3, col = 'blue')

# Set the legend
l <- c('Sub_metering_1', 
       'Sub_metering_2', 
       'Sub_metering_3')

color <- c('black', 'red', 'blue')

legend('topright', 
       legend = l,
       col = color, 
       lty = 'solid')

# Close device
dev.off()
