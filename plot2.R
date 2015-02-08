# Load and exec the file loadAndCleanData
# The code behind this file works to load the data
# and provide dataframe with only the data needed for the purpose
# That is, data for days 2007-02-01 and 2007-02-02
source("loadAndCleanData.R") 

# Open device
png(filename = 'plot2.png')

# Plot construction
plot(subData$Time, 
     subData$Global_active_power,
     ylab = 'Global Active Power (kilowatts)', 
     xlab = '',
     type = 'l')

# Close device 
dev.off()
