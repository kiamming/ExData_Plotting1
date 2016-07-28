setwd("C:/Users/jasonc/Dropbox/DataYada/DataScienceSpec/Exploratory")

household = read.table("household_power_consumption-2007-02-01_and_02.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
household$Time = strptime(paste(household$Date, household$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
household$Date = as.Date(household$Date, format="%d/%m/%Y")
