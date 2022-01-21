# MechaCar_Statistical_Analysis
# Overview
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

Run t-tests to determine if the manufacturing lots are statistically different from the mean population

Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
# Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using knowledge of R, one will design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![R_Analysisdv1](https://user-images.githubusercontent.com/89113627/150499049-b18140cd-237f-4901-98e9-b1c7b4b9d809.PNG)

Is the slope of the linear model considered to be zero? Why or why not?

The p-Value 5.35e-11 is much smaller than the assumed significance level of 0.05. Hence, the null hypothesis will be rejected and the slope is not considered zero.
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared value of the linear model is 0.715 meaning it will determine approximately 71% of all mpg predictions. MechaCar prototypes are predicted to achieve good mpg by different regression models.

# Create Visualizations for the Trip Analysis
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using knowledge of R, one will create a summary statistics table to show:

The suspension coil’s PSI continuous variable across all manufacturing lots
The following PSI metrics for each lot: mean, median, variance, and standard deviation.

![total_summary](https://user-images.githubusercontent.com/89113627/150501158-d5d759a1-8bfc-4b75-94ec-a62e2def5994.PNG)

![lot_summary](https://user-images.githubusercontent.com/89113627/150501264-3a5233d6-ab78-484c-ad4c-7557833b9454.PNG)

MechaCar suspension coils are designed in such a way that its variance cannot exceed 100 pounds per square inch. There is a global variance of 62.3 psi across all manufacturing lots. As per lot variances, Lot 1 and Lot 2 are at par whereas the variance in Lot 3 is 170.3 psi which is above required value.
# T-Tests on Suspension Coils
Using knowledge of R, t-tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![T COIL](https://user-images.githubusercontent.com/89113627/150503044-f4627ab6-8726-469d-8995-f08890cb0ff0.PNG)

@ Lot 1, The p-value for lot 1 is 1 which is above the significance level assuming our significance level is 0.05 percent. Hence, the null hypothesis cannot be rejected and therefore they are equivalent.

@ Lot 2, The t.test performed in lot 2 shows the p-values of 0.6072 with a mean of 1500.2. Our p-value is greater than 0.05 meaning the null hypothesis is strongly accepted.

@ Lot 3, the p-Value is 0.04 less than 0.05 which is statistically significant. This indicates strong evidence against the null hypothesis.

#  Study Comparing the MechaCar to the Competition
Potential metrics that may be tested will be cost of production, city or highway fuel efficiency, horsepower, maintenance cost, and or safety rating.

What is the null hypothesis or alternative hypothesis?

Null hypothesis: MechaCar to the Competition does not have highway fuel efficiency

Alternative hypothesis: MechaCar to the Competition has highway fuel efficiency

What statistical test would you use to test the hypothesis? And why?

t-test will be used and this is because t-test fits the model

What data is needed to run the statistical test?

Dataset of fuel economy from MechaCar and dataset of fuel economy from the Competition.

