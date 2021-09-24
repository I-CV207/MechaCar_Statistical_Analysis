#Deliverable 1

# 3. Use the library() function to load the dplyr package.
library(dplyr)
# 4. Import and read the MechaCar_mpg.csv dile as a dataframe.
mecha_car_data <- read.csv("Resources/MechaCar_mpg.csv")
# 5. Perform linear regression using lm() function.
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car_data)
# 6.Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car_data))
