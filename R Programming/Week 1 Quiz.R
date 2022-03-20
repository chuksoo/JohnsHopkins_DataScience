# R programming - Week 1 Quiz

# get and print working directory
print(getwd())

# read data
data <- read.csv('hw1_data.csv')
print(data)

# extract first two rows and print to console
x <- head(data, 2)
x

# how many observation are in the data frame
print(nrow(data))

# extract last two rows and print to console
y <- tail(data, 2)
y

# what is the value of Ozone in 47th row?
print(data$Ozone[47])

# how many missing values are in Ozone
sum(is.na(data$Ozone))

# mean of Ozone column without missing values
mean(data$Ozone, na.rm = TRUE)

# extract subset of rows where Ozone are above 31
# and Temp values are above 90. What is the mean 
# of Solar.R in this subset?
subset_row <- subset(data, Ozone > 31 & Temp > 90)
mean(subset_row[,2])

# what is the mean of 'Temp' when 'Month' is equal to 6
mean(subset(data, Month == 6)[,4])

# what is the maximum Ozone value in month of May
max(subset(data, Month == 5)[,1], na.rm = TRUE)