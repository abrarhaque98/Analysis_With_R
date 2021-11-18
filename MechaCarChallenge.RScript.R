library(dplyr) #Load Library

## Linear Regression to Predict MPG

#Import and Read MechaCar_mpg.csv
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


#Perform linear regression on mechacar table 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

## Summary Statistics on Suspension Coils

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)) 

#Import and read Suspension_Coil.csv
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#provide summary for coil table summarized by mean values of PSI
total_summary <- summarize(suspension_table, Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD = sd(PSI)) 

# create summary grouped by lot summarized by mean values of PSI
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD = sd(PSI))

## T-Tests on Suspension Coils

#t-test for all lots
t.test((suspension_table$PSI),mu = 1500)

# t-test for each lot

t.test(subset(suspension_table,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
