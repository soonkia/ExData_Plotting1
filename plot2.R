plot2 <- function(data) {
  #Open png graphics device
  png(file = "plot2.png", width=480, height=480, units="px")
  #Create a histogram plot
  plot(data$Time,data$Global_active_power,type="l",ylab="Global Active Power (Watts)",xlab="")
  #Switch the png graphics device off
  dev.off()
}

#Main function to run and load the file
runplot2 <-function (){
  #Get the load code
  source("plotting1.R")
  #Read in the file
  x<-readFile()
  #plot and save to plot1.png
  plot2(x)
  
}