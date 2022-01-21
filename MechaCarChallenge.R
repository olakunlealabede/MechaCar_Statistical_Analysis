#Deliverable 1---Linear Regression to Predict MPG

#load dplyr package

#read.csv file

#MechaCar <- read.csv("MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

# Summary 

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))


#Deliverable 2-----Create Visualizations for the Trip Analysis

#Read.csv file

Suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#total summary 

total_summary <- Suspension %>% summarize(Mean=mean(PSI),median=(PSI), Variance=var(PSI),SD=sd(PSI))

#lot summary

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))




#Deliverable 3: T-Tests on Suspension Coils

#determine if the PSI across all manufacturing lots

t.test(Suspension$PSI, mu = 1500)

#t.test I

t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#t.test II

t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

#t.test III

t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)