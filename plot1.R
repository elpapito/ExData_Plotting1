# Load and exec the file loadAndCleanData
# The code behind this file works to load the data
# and provide dataframe with only the data needed for the purpose
# That is, data for days 2007-02-01 and 2007-02-02
source("loadAndCleanData.R")

# Open device
png(filename = 'plot1.png')

# Histogram construction
hist(subData$Global_active_power, 
     main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)', 
     col = 'red')

# Close device 
dev.off()
