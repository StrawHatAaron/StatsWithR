#Aaron Miller
#Stats 115A-01
#Homework 4 

#*************************************************************************
#****Professor will have to change this to what his working dir is.*******
working_dir <- "/Users/ajm/documents/school/fa18/stat115a/R_programs/hw4/"
#*************************************************************************
# Load lubridate
library(lubridate)


#3.9.1 Titanic
titanic_data <- read.table(paste(working_dir, "titanic.txt", sep=""), header=TRUE)
titanic_data
#1 
#$convert 'Name' to 'Character' in the dataframe
names(titanic_data)[1] <- "character"
head(titanic_data)
#2 
#how much ages are missing in the dataframe?
sum(is.na(titanic_data[,3,drop=FALSE]))
#3 
#make new status variable based off the survived variable.
#  say alive of dead
titanic_data$Status <- factor(ifelse(titanic_data$Survived == 0, "dead", "alive"))
head(titanic_data)
#4 
#count the number of passangers in each class
class_3_num <- nrow(subset(titanic_data, PClass=="3rd"))
class_3_num
class_2_num <- nrow(subset(titanic_data, PClass=="2nd"))
class_2_num
class_1_num <- nrow(subset(titanic_data, PClass=="1st"))
class_1_num

#3.9.2 Hydro dam
#1 just read the data
dam <- read.csv(paste(working_dir, "Hydro.csv", sep=""))
head(dam)

#3.9.3 HFE tree measurements
#1 
#use summary, str and describe to observe the data
trees_meas <- read.csv(paste(working_dir, "HFEIFbytree.csv", sep=""))
summary(trees_meas)
str(trees_meas)
#describe(tees_meas)
#2 
#the heights missing
sum(is.na(trees_meas[,5,drop=FALSE]))
#the diameters missing
sum(is.na(trees_meas[,6,drop=FALSE]))
#3 
#inspect the levels of the treatment (treat), with the levels function
levels(trees_meas$treat)
#  Also count the number of levels with the nlevels function
nlevels(trees_meas$treat)
#  Now assign new levels to the factor, replacing the abbreviations with a more informative label. Follow the example in Section
# I - irrigated, F - dry fertilized, IL - Liquid fertilizer plus irrigation, C - control
levels(trees_meas$treat) <- c("control", "dry fertilized", "irrigated", "Liquid fertilizer plus irrigation")
trees_meas$treat
#4
#Using table, count the number of observations by treat, to check if the dataset is balanced
table(trees_meas$treat)
# do the same thing but only for the ones that have height
no_height <- subset(trees_meas, !is.na(height))
table(no_height$treat)

#3.9.4 Flux data
#1
flux <- read.csv(file = paste(working_dir, "Fluxtower.csv", sep=""))
flux
names(flux)[1] <- "DateTime"
names(flux)
#2 Convert DateTime to a POSIXct class
flux$DateTime <- dmy_hm(flux$DateTime)
flux$DateTime
#4
flux$Quality <- ifelse(flux$ustar < 0.15, "bad", "good")
head(flux)
#5 add a month and year column to the data set.
flux$month <- month(flux$DateTime)
flux$month
flux$year <- year(flux$DateTime)
flux$year

#3.9.5 Alphabet Aerobics 3
#1 read in the file and count the character on each line
lyric <- readLines(paste(working_dir, "alphabet.txt", sep=""))
nchar(lyric)




 
