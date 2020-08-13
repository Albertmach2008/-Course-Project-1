setwd("C:/Users/EQUIPO/Downloads/Deberes_cursos_R")
read.table("household_power_consumption.txt",header=TRUE, sep=";",stringsAsFactors=FALSE)->data
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subsetdata$Global_active_power)

png(filename="plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
