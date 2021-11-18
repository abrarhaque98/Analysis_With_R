#Overview
The objective of this project was to assist a company in reviewing their production data for their new prototype, the Mechacar. To assist the manufacturing team and provide insights into the data the following analysis were performed.
* Linear regression analysis to identify which variables in the dataset predict MPG of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of findings. 
-The data analysis performed was done on Rstudio.

## Linear Regression to Predict MPG
Linear regression was performed on several variables of Mechacar Data to determine whether or not they had any relation to the MPG of the MechaCar. 

A summary was called to list the statistical values of the regression calculation done. 

![image](https://user-images.githubusercontent.com/85713568/142340539-927b3b43-dd82-48bf-aa4a-e21780b276c7.png)

* To identify which variables provided a non-random amount of variance to the mpg values in the data set we look at the Pr > (|t|), any value under .05 can be considered significant enough to be a factor of the mpg. When looking at the summary of the linear regression, vehicle length and ground clearance fall under the .05 threshold and can be considered to provide non-random amounts of variance to the mpg values. 
* The slope of the linear model will not be considered to be zero. The null hypothesis was that the slope would be zero for this regression. The p-value of 5.35e-11 is below the threshold of .05, indicating that we would reject the null hypothesis and lead to suggest that this model has a non-zero slope.
* This model does not perfectly predict the mpg of the MechaCar prototypes but still provides reasonably accurate results with a multiple r squared value of .7149 this indicates that the model predicted mpg correctly 71.49% of the time. This will provide accurate estimates 7/10 times which many would consider effective but is up to the desired values of the company. 

## Summary Statistics on Suspension Coils
![image](https://user-images.githubusercontent.com/85713568/142360440-cebdb1f9-a21b-4384-aa2d-5153ceae586a.png)
 
 The image above displays summary statistics of Suspension Coil PSI data from three different production lots.  A summary for all of them combined was produced as well as another one which grouped each lot individually.
The company said the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The average of all the lots meets those requirements in the total_summary view, although when individually viewing them all with lot_summary it is seen that Lot 3 has a variance of 170 going against the design specifications. 

## T-Tests on Suspension Coils
For this part T-tests were performed on each lot grouping, the test was to see if the PSI's of the coils produced in the lot are statistically different from the population mean of 1500. The results  are shown below.

![image](https://user-images.githubusercontent.com/85713568/142362215-91743169-d79b-4717-bcf4-6ecdebd3e2b2.png)

The t test ran against all the lot values has a p value of .06 thus we do not reject the null hypothesis and say that the overall lot suspension coil sample is not statistically different from the population mean. 

![image](https://user-images.githubusercontent.com/85713568/142362371-d660cedd-dbe0-4680-a61d-23af81b41372.png)

The t-test for lot 1 yields a 1 p value also indicating that we do not reject the null hypothesis.

![image](https://user-images.githubusercontent.com/85713568/142362443-88cadc01-6bc9-4123-a1c3-0aa4427fd769.png)

Lot 2 also has a p-value exceeding .05 and we do not reject the null hypothesis.

![image](https://user-images.githubusercontent.com/85713568/142362505-4b48d301-6b69-4748-af7c-d4933185e614.png)

Lot 3 on the otherhand has a p-value of .04 putting it under the .05 threshold, in this instance we believe we can reject the null hypothesis and suggest that there is a statistical difference in Lot 3.

## Study Design: MechaCar vs Competition
To further gain insight into the MechaCar a test of its performances against competitor cars would be essential. Since there is a good understanding of MechaCar's mpg a fuel efficiency comparison would be valuable, consumers would be more inclined to purchase a MechaCar if it cost them less over time for fuel costs. 
* The metric being tested would be MPG essentially comparing fuel efficency with competitors and declaring whether or not there is a statistical difference. 
* The null hypothesis of this test  would be that there is no statistical difference between MechaCar and its competitors MPG/ Fuel efficiency.
* The test best suited to perform this statistical test would be an ANOVA test which can compare the difference between multiple samples of data. 
* Data required to perform the ANOVA test would be the mpg efficiency of several competitors. 

