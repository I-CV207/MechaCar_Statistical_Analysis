# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Applying a multiple linear regression, we'll design a linear model that predicts the mpg(miles per galon) usign several variables such as vehicle length and weight, spoiler angle, drivetrain and ground clearance. The following are the results of the analyzed data:

![D1-STEP 5](https://user-images.githubusercontent.com/83261520/134714274-4c197512-3876-4768-b14e-9fdc34ee33a3.png)

![D1-STEP 6](https://user-images.githubusercontent.com/83261520/134714280-317145f1-5c97-4ddb-b43d-d69bf98d2e1b.png)

The equation obtained to predict mpg is the following:

mpg = (6.27)vehicle_length + (1.24e-03)vehicle_weight + (6.88e-02)spoiler_angle + (3.55)ground_clearance + (-3.41)AWD + (-1.040e02)

The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle lenght and ground clearance.

  The slope of the linear model is not zero as the p-value < 0.05, therefore the null hypothesis is rejected wich states that m=0 (slope).
  
  The r^2 of this model is 0.71 this means that it could describe 71% of the mpg predictions for MechaCar prototypes, however we lack of significant variables meaning that this performs well on this dataset only.

