# Download and unzip the file
url <- paste("https://d396qusza40orc.cloudfront.net/",
             "exdata%2Fdata%2Fhousehold_power_consumption.zip",
             sep = "")
if(!file.exists("household_power_consumption.txt")) {
   download.file(url, destfile = "data.zip")
   unzip("data.zip")
}

# Read all data from file
data <- read.table(file = "household_power_consumption.txt", 
                   sep = ";", 
                   header = TRUE, 
                   na.strings = "?")

# Convert Date and Time
data$Date <- as.Date(data$Date , "%d/%m/%Y")
data$Time <- paste(data$Date, data$Time, sep = " ")
data$Time <- strptime(data$Time, format = "%Y-%m-%d %H:%M:%S")

# Set interval
startDate <- strptime("2007-02-01 00:00:00",  "%Y-%m-%d %H:%M:%S")
endDate <- strptime("2007-02-03 00:00:00", "%Y-%m-%d %H:%M:%S")
subDate <- data$Time >= startDate & data$Time < endDate

# Remove all NA's vlues
NAs <- is.na(subDate)
subDate <- subDate & !NAs

# Set sub dataframe for treatment
subData <- data["Time" <- subDate, ]
