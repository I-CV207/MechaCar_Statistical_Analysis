# MechaCar Statistical Analysis

## Overview
The objective of this analysis is to review the production data for insights that may help the manufacturing team of MechaCar.

To achieve such thing the following will be done:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG

Applying a multiple linear regression, we'll design a linear model that predicts the mpg(miles per galon) usign several variables such as vehicle length and weight, spoiler angle, drivetrain and ground clearance. The following are the results of the analyzed data:

![D1-STEP 5](https://user-images.githubusercontent.com/83261520/134714274-4c197512-3876-4768-b14e-9fdc34ee33a3.png)

![D1-STEP 6](https://user-images.githubusercontent.com/83261520/134714280-317145f1-5c97-4ddb-b43d-d69bf98d2e1b.png)

The equation obtained to predict mpg is the following:

mpg = (6.27)vehicle_length + (1.24e-03)vehicle_weight + (6.88e-02)spoiler_angle + (3.55)ground_clearance + (-3.41)AWD + (-1.040e02)

The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle lenght and ground clearance.

  The slope of the linear model is not zero as the p-value < 0.05, therefore the null hypothesis is rejected wich states that m=0 (slope).
  
  The r^2 of this model is 0.71 this means that it could describe 71% of the mpg predictions for MechaCar prototypes, however we lack of significant variables meaning that this performs well on this dataset only.

## Summary Statistics on Suspension Coils

The MechaCar suspension coil dataset was analyzed to get summary statistics of the weight capacities of multiple suspension coils in order to determine if the manufacturing process is consistent across production lots. The following summaries were generated and analyzed:

- Mean, meadian, variance and standard deviation of PSI metrics across all manufacturing lots.

- Mean, meadian, variance and standard deviation of PSI metrics fir each lot.

The results were the following:

![D2-STEP 3](https://user-images.githubusercontent.com/83261520/134748213-51fc9ddc-40ea-4a3b-bf50-4b86467b20f6.png)

![D2-STEP 4](https://user-images.githubusercontent.com/83261520/134748218-6923d3e5-cbbf-45b3-8a32-6b9979eeda26.png)

According to the design specifications for the MechaCar suspension coils, the **variance** of the suspension coils must not exceed 100 pounds per square inch.
  
  The current manufacturing data indicates that overall, as the variance across all the manufacturing lots is 62.29 apparently this specification is met, however when looking at each lot individually only **Lot 1** and **Lot 2** fullfill this requisite as their variance is 0.98 and 7.47 respectively while **Lot 3** is 170.28, therefore we can imply that the manufacture of Lot 3 was defective as it does not meet the specifications.

## T-Tests on Suspension Coils

Now we aim to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

For all manufacturing lots the results were the following:

![D3-STEP 1](https://user-images.githubusercontent.com/83261520/134754810-1564cae3-4d94-4d41-a976-663cb5373d55.png)

As the p-value obtained from this analysis is 0.06 we fail to reject our null hypothesis (as p-value > 0.05) so we conclude that there is no statistical difference between all manufacturing losts and the population mean of 1500 PSI.

For each lot we obtained the following results:

**Lot 1**

![D3-STEP 2-LOT1](https://user-images.githubusercontent.com/83261520/134754831-ccc5aad1-a7d4-4c2c-ae1c-3a1d499c3cc5.png)

As the p-value obtained from this analysis is 1 we fail to reject our null hypothesis (as p-value > 0.05) so we conclude that there is no statistical difference between ***lot 1***  and the population mean of 1500 PSI.

**Lot 2**

![D3-STEP 2-LOT2](https://user-images.githubusercontent.com/83261520/134754849-fe4cd136-b18f-410d-ac33-01ddaa201921.png)

As the p-value obtained from this analysis is 0.61 we fail to reject our null hypothesis (as p-value > 0.05) so we conclude that there is no statistical difference between ***lot 2***  and the population mean of 1500 PSI.

**Lot 3**

![D3-STEP 2-LOT3](https://user-images.githubusercontent.com/83261520/134754860-1eff03ce-7adf-43b5-80be-efeed0868b33.png)

As the p-value obtained from this analysis is 0.04 we have sufficient statistical evidence that our null hypothesis is not true (as p-value > 0.05) so we conclude that there is a statistical difference between ***lot 3***  and the population mean of 1500 PSI.

## Study Design: MechaCar vs Competition

A statistical study that can quantify how the MechaCar performs against the competition is a reliable way to determine how good MechaCar really is. 
  
  In this case we will go for city fuel efficiency. Our null hypothesis will be that the difference between our observations(true mean difference) is equal to zero and our alternate hypothesis is that the difference between our observations (MechaCar vs Competition) is not equal to zero. The statistical test that will be used is a ***pair t-test*** as we want to compare 2 samples, each from a different population. The data needed to run the statistical test is the city fuel eficcieny of MechaCar vehicles and also the same information but from the competition. 
