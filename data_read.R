mydata = read.table("~/Desktop/git_repo/household_power_consumption.txt", sep=";",header=TRUE)

# get the sub data set which the data is between "2007-02-01" and "2007-02-02"
subdata=mydata[which(as.Date(mydata$Date,format="%d/%m/%Y")>=as.Date("2007-02-01") & as.Date(mydata$Date,format="%d/%m/%Y")<=as.Date("2007-02-02")),];

# save the subdata into csv file
x <- data.frame(subdata)
write.csv(x, "~/Desktop/git_repo/household_power_consumption_subdata.csv")

