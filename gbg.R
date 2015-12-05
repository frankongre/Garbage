## Basic Statistics on Urban Sanitation in Cities by Region
# 2012
gbg.2012 <- read.csv("data/Z1211E12.csv")
gbg.2012 <- gbg.2012[-c(1:6,8,14,18,26,33,39,45:nrow(gbg.2012)),]
rownames(gbg.2012) <- c(1:nrow(gbg.2012))
gbg.2012 <- gbg.2012[,-c(8:10)]
colnames(gbg.2012) <- c("region","clean","garbage","excrement","vehicle","lavatory","third")
# region: Region
# clean: Area under Cleaning Program (10,000 sq.m)
# garbage: Volume of Garbage Disposal (10,000 tons)
# excrement: Volume of Excrement and Unine Disposal (10,000 tons)
# vehicle: Number of Special Vehicles for Environmental Sanitation (unit)
# lavatory: Number of Public Lavatories (unit)
#-- third: Third Grade and Above

