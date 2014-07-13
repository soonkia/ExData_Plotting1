plot4 <- function(data) {
  #Open png graphics device
  png(file = "plot4.png", width=480, height=480, units="px")
  par(mfrow=c(2,2),mar=c(4,4,1,2))
  
  #Create Global Active Power
  plot(data$Time,data$Global_active_power,type="l",ylab="Global Active Power (Watts)",xlab="")
  
  #Create Voltage Plot
  plot(data$Time,data$Voltage,type="l",ylab="Voltage",xlab="datetime")
  
  #Create a histogram plot
  plot(data$Time,data$Sub_metering_1,col="Black",type="l",ylab="Sub Metering",xlab="")
  lines(data$Time,data$Sub_metering_2,col="Red")
  lines(data$Time,data$Sub_metering_3,col="Blue")
  legend("topright",names(data[,7:9]),col=c("Black","Red","Blue"),lty=1,lwd=2)
  
  #Create Reactive Power Plot
  plot(data$Time,data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
  #Switch the png graphics device off
  dev.off()
}

#Main function to run and load the file
runplot4 <-function (){
  #Get the load code
  source("plotting1.R")
  #Read in the file
  x<-readFile()
  #plot and save to plot1.png
  plot4(x)
  
}