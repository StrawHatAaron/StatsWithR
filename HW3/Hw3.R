#Aaron Miller
#Stat 115A
#HW3 part 1 for R programs
#Chapter 2 problems in the R textbook

#*************************************************************************
#****Professor will have to change this to what his working dir is.*******
working_dir <- "/Users/ajm/documents/school/fa18/stat115a/R_programs/hw3/"
#*************************************************************************

#2.6.1 Working with a single vector 2
#1 Take a subset of the rainfall data where rain is larger than 20
rain_vec <- c(0.1,  0.6, 33.8,  1.9,  9.6,  4.3,  33.7,  0.3,  0.0,  0.1)
rain_min_20 <- subset(rain_vec, rain_vec > 20)
rain_min_20
#2 mean rain fall where it was at least four
rain_max_4 <- subset(rain_vec, rain_vec <= 4)
mean_2_6_1 <- mean(rain_max_4)
mean_2_6_1
#3 Subset the vector where it is either exactly zero, or exactly 0.6
rain_exact <- subset(rain_vec, rain_vec==0 | rain_vec==0.6)
rain_exact

#2.6.2 Alphabet aerobics 2
#1 What is the 18th letter of the alphabet
letters[18]
#2 What is the last letter of alphabet
letters[26]

#2.6.3 Basic operations with the Cereal data
getwd()
cereal <- read.csv(paste(working_dir, "Cereals.csv", sep=""))
cereal
#1 Read first few rows with head and inspect the data types with str
head(cereal)
str(cereal)
#2 add a new variable to the data set 
cereal$totalCarb <- cereal$carbo + cereal$sugars
cereal$totalCarb
#3 how many are hot cereals?
num_hot_cereals <- nrow(subset(cereal, Cold.or.Hot=="H" ))
num_hot_cereals
#5 take a subset with the manufacturer K
kellogg_cereals <- subset(cereal, Manufacturer=="K")
head(kellogg_cereals)
#6 subset of the dataframe with <80calories >20vitamins
good_cal_vit <- subset(cereal, calories<80 & vitamins>20)
good_cal_vit
#7 subset with  x>=1unit_sugar, while keeping columns [name, calories, vitamins]
yay_sugar <- subset(cereal, sugars>=1)
less_cols_sugar <- subset(yay_sugar, select = c(Cereal.name, calories, vitamins))
less_cols_sugar
#8 create and write into a csv file with one of the subsets
write.csv(yay_sugar, file=paste(working_dir, "yay_sugar.csv", sep=""))
#9 remname Manufacturer to Producer
names(cereal)[2] <- "Producer"
head(cereal)

#2.6.4 A short dataset
#1 read the data set from txt file, csv or copy paste
honey_eaters <- read.table(paste(working_dir, "honey_eaters.txt", sep=""), header=TRUE)
honey_eaters
#2 add day number column
honey_eaters$day_number = c(1,2,3,4,5,6,7)
honey_eaters
#3 delete Day column - (more efficient way to store the data. I like it!)
honey_eaters <- subset(honey_eaters, select = c(day_number, nrbirds))
honey_eaters

#2.6.5 Titanic
#1 read in the titanic data - (there was two typos in the data I had to fix)
titanic_data <- read.table(paste(working_dir, "titanic.txt", sep=""), header=TRUE)
titanic_data
#2 make 2 new sets one for male survivors and other female survivors
surviviors <- subset(titanic_data, Survived==1)
#the female survivors
female_survivors <- subset(surviviors, Sex=="female")
female_survivors
#the male survivors
male_survivors <- subset(surviviors, Sex=="male")
male_survivors

#2.6.6 Managing Your workspace
#list all the names of the objects in my workspace
names(mget(ls()))
