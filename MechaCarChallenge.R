# Use the library() function to load the dplyr package.
library(dplyr)

# LINEAR REGRESSION MECHACAR PROTOTYPE

# Import and read the MechaCar_mpg.csv file as a dataframe.
mecha_car_data <- read.csv("Resources/MechaCar_mpg.csv")
# Perform linear regression using lm() function.
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car_data)
# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car_data))

# SUMMARY STATISTICS OF SUSPENSION COILS

# Import and read the Suspension_coil.csv file as a dataframe.
suspension_coil_data <- read.csv("Resources/Suspension_coil.csv")
# Create a total_summary dataframe
total_summary <- suspension_coil_data %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_deviation=sd(PSI),.groups = "keep")
# Create a lot_summary dataframe
lot_summary<- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_deviation=sd(PSI),.groups = "keep")

# T-TEST ON SUSPENSION COILS
# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil_data$PSI,mu=1500)
# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

