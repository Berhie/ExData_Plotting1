## This code is for loading the data set into R
setwd("C:/Users/Vostro154032bit/Documents/exdata_data_household_power_consumption")
filename <- "household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) # 2075259 9

## We only need data of 2 days.
newData<-subset(data, Date == "1/2/2007" | Date == "2/2/2007")

attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)