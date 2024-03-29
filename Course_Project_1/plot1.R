


setwd("~/R/Hopkins_Data_Science_Specialization/Exploratory_Data_Analysis")

#read in data for our dates
a <- read.csv("01-02-2007.txt")
b <- read.csv("02-02-2007.txt")

#combine the two days
data <- rbind(a,b)

str(data)
# 'data.frame':	2880 obs. of  9 variables:
#     $ Date                 : Factor w/ 2 levels "2007-02-01","2007-02-02": 1 1 1 1 1 1 1 1 1 1 ...
# $ Time                 : Factor w/ 1440 levels "00:00:00","00:01:00",..: 1 2 3 4 5 6 7 8 9 10 ...
# $ Global_active_power  : num  0.326 0.326 0.324 0.324 0.322 0.32 0.32 0.32 0.32 0.236 ...
# $ Global_reactive_power: num  0.128 0.13 0.132 0.134 0.13 0.126 0.126 0.126 0.128 0 ...
# $ Voltage              : num  243 243 244 244 243 ...
# $ Global_intensity     : num  1.4 1.4 1.4 1.4 1.4 1.4 1.4 1.4 1.4 1 ...
# $ Sub_metering_1       : num  0 0 0 0 0 0 0 0 0 0 ...
# $ Sub_metering_2       : num  0 0 0 0 0 0 0 0 0 0 ...
# $ Sub_metering_3       : int  0 0 0 0 0 0 0 0 0 0 ...


# Open dev
png("plot1.png")
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()