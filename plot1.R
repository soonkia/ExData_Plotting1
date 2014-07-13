plot1 <- function(data) {
  #Open png graphics device
  png(file = "plot1.png", width=480, height=480, units="px")
  #Create a histogram plot
  hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
  #Switch the png graphics device off
  dev.off()
}

#Main function to run and load the file
runplot1 <-function (){
  #Get the load code
  source("plotting1.R")
  #Read in the file
  x<-readFile()
  #plot and save to plot1.png
  plot1(x)
  
}