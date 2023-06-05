#Load the data from computer CSV ##
Divvy_Trips_2018_Q1 <- read.csv("C:/Users/natha/Desktop/Bike Folder/Divvy_Trips_2018_Q1.csv" )
Divvy_Trips_2018_Q2 <- read.csv("C:/Users/natha/Desktop/Bike Folder/Divvy_Trips_2018_Q2.csv" )
Divvy_Trips_2018_Q3 <- read.csv("C:/Users/natha/Desktop/Bike Folder/Divvy_Trips_2018_Q3.csv" )
Divvy_Trips_2018_Q4 <- read.csv("C:/Users/natha/Desktop/Bike Folder/Divvy_Trips_2018_Q4.csv" )

## View the column names of the data 

colnames(Divvy_Trips_2018_Q1)
colnames(Divvy_Trips_2018_Q2)
colnames(Divvy_Trips_2018_Q3)
colnames(Divvy_Trips_2018_Q4)

## Rename column name file on Divvy_Trips_2018_Q1 to have a uniform column name with other files 
### i.e Divvy_Trips_2018_Q2 to Divvy_Trips_2018_Q4##

colnames(Divvy_Trips_2018_Q1 )<- c("trip_id","start_time","end_time","bikeid",
                                    "tripduration","from_station_id","from_station_name","to_station_id",
                                    "to_station_name", "usertype","gender","birthyear")  
                                              
## Check if all columns names are similar now ###
colnames(Divvy_Trips_2018_Q1)
colnames(Divvy_Trips_2018_Q2)
colnames(Divvy_Trips_2018_Q3)
colnames(Divvy_Trips_2018_Q4)

## Some  cells in the are empty  it can be cleaned as follows##

Divvy_Trips_2018_Q1 [complete.cases(Divvy_Trips_2018_Q1),]
Divvy_Trips_2018_Q2 [complete.cases(Divvy_Trips_2018_Q2),]
Divvy_Trips_2018_Q3 [complete.cases(Divvy_Trips_2018_Q3),]
Divvy_Trips_2018_Q4 [complete.cases(Divvy_Trips_2018_Q4),]

## Assign the cleaned file name as Comp_Divvy_Trips_2018

Comp_Divvy_Trips_2018_Q1 <- Divvy_Trips_2018_Q1 [complete.cases(Divvy_Trips_2018_Q1),]
Comp_Divvy_Trips_2018_Q2 <- Divvy_Trips_2018_Q2 [complete.cases(Divvy_Trips_2018_Q2),]
Comp_Divvy_Trips_2018_Q3 <- Divvy_Trips_2018_Q3 [complete.cases(Divvy_Trips_2018_Q3),]
Comp_Divvy_Trips_2018_Q4 <- Divvy_Trips_2018_Q4 [complete.cases(Divvy_Trips_2018_Q4),]

## View complete data 
print(Comp_Divvy_Trips_2018_Q1)
print(Comp_Divvy_Trips_2018_Q2)
print(Comp_Divvy_Trips_2018_Q3)
print(Comp_Divvy_Trips_2018_Q4)


### Combine the the four data  to one ### 

Divvy_Trips_2018 <- rbind(Comp_Divvy_Trips_2018_Q1,Comp_Divvy_Trips_2018_Q2,Comp_Divvy_Trips_2018_Q3,Comp_Divvy_Trips_2018_Q4)
View(Divvy_Trips_2018)

### Export the data###

write.csv(Divvy_Trips_2018, "C:/Users/natha/Desktop/Bike Folder/Divvy_Trips_2018.csv")




