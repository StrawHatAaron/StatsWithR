#Aaron Miller
#Stat 115A
#HW3 part 1 for R programs
#Chapter 2 problems in the R textbook

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
