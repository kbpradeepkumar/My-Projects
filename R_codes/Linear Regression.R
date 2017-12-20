setwd("C:/Users/prade/OneDrive/Documents/R codes")
Lr_data <- read.csv('Salary_Data.csv')
library(caTools)
split_data <- sample.split(Lr_data, SplitRatio = 2/3)
training_set <- subset(Lr_data, split_data == TRUE)
test_set <- subset(Lr_data, split_data == FALSE)
reg <- lm(Salary ~ YearsExperience, training_set)
y_pred <- predict(reg,test_set)
y_pred