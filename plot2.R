## First check whether it has the file in the current dir.
if (!"Reading_Data.R" %in% list.files()) {
  setwd("C:/Users/Vostro154032bit/ExData_Plotting1/")
} 
source("Reading_Data.R")
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()