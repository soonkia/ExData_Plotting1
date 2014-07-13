plot3 <- function(data) {
  #Open png graphics device
  png(file = "plot3.png", width=480, height=480, units="px")
  #Create a histogram plot
  plot(data$Time,data$Sub_metering_1,col="Black",type="l",ylab="Sub Metering",xlab="")
  lines(data$Time,data$Sub_metering_2,col="Red")
  lines(data$Time,data$Sub_metering_3,col="Blue")
  legend("topright",names(data[,7:9]),col=c("Black","Red","Blue"),lty=1,lwd=2)
  #Switch the png graphics device off
  dev.off()
}

#Main function to run and load the file
runplot3 <-function (){
  #Get the load code
  source("plotting1.R")
  #Read in the file
  x<-readFile()
  #plot and save to plot1.png
  plot3(x)
  
}