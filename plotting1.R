readFile <- function () {
  tab5rows <- read.table("household_power_consumption.txt", header = TRUE, nrows = 5,sep=";")
  classes <- sapply(tab5rows, class)
  #Read in file with all classes set as char
  tabAll <- read.table("household_power_consumption.txt", header = TRUE, sep=";",colClasses = "character",nrows=1100000)
  #Create a logical vector to subset the data
  t<-factor(tabAll$Date)
  tv<-t=='1/2/2007' | t=='2/2/2007'
  tabAll<-tabAll[tv,]
  #
  tabAll$Date<-as.Date(tabAll$Date,format="%d/%m/%Y")
  tabAll$Time<-strptime(paste(tabAll$Date,tabAll$Time),format="%Y-%m-%d %H:%M:%S")
  
  for (i in 3:9) {
   tabAll[,i]<-as.numeric(tabAll[,i])
  }
  tabAll
}