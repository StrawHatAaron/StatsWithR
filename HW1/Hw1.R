#Statistics 115A, Section 01
#Aaron Miller
#9/4/2018

#***1.15.1: Calculating***
#1
100.1+234.9+12.01
#2
sqrt(256)
#3
log10(100)*cos(pi)
#4
cumsum(c(2,3,4,5,6))
#***1.15.2: Simple objects***
x <- 10
y <- 20
#1 & 2
z <- x * y
#3
ls()
#4
myvec <- c(x, y, z)
#5
min(myvec)
max(myvec)
length(myvec)
var(myvec)
#6
rm(myvec)

#***1.15.3: Working with a single vector***
#1
rainfall_vec <- c(0.1,  0.6, 33.8,  1.9,  9.6,  4.3,  33.7,  0.3,  0.0,  0.1)
#2
#the mean of the rainfall is:
mean(rainfall_vec)
#the standard deviation of the rainfall is:
sd(rainfall_vec)
#3 
#Calculated the rainfall
sum(rainfall_vec)
#a conformation that the method works with the vector
0.1 +  0.6 + 33.8 + 1.9 + 9.6 + 4.3 + 33.7  + 0.3 + 0.0 + 0.1
#4
max(rainfall_vec)

#***1.15.4: Scripts***
#1
#Should I do this??????

#***1.15.5: To quote or not to quote***
#1
one <- 1
two <- 2

#***1.15.6: Working with two vectors***
#1
cylinder_lengths <- c(2.1, 3.4, 2.5, 2.7, 2.9)
cylinder_diameters <- c(0.3, 0.5, 0.6, 0.9, 1.1)
#2
#correlation between length and diameter
cor(cylinder_lengths, cylinder_diameters)
#3
#Cylinder volumes
cylinder_volumes <- cylinder_lengths * pi * ((cylinder_diameters/2)^2)
cylinder_volumes
#4
#mean of cylinder volumes
mean_vols <- mean(cylinder_volumes)
#standard deviation
sd_vols <- sd(cylinder_volumes)
#coefficient of variation
sd_vols/mean_vols*100



#***1.15.9: Into the matrix***
#1
hundredths <- seq(from=0, to=1, by=.01)
A = matrix(
  sample(hundredths, size=100, replace=TRUE),
  nrow=10,              
  ncol=10,              
  byrow = TRUE)        
A
#2
rowMeans(A)
sd(rowMeans(A))

#***1.15.10: Packages***
#1, 2 and 3 are shoiwing how to install libraries and use them
#4
densityPlot(c(1,2,3,4,5,6,7,8,9))
#5
example(densityPlot)


