## Population at Year-end by Region, 2001-2012
pop.2012 <- read.csv("data/Z0305E14.csv")
pop.2012 <- pop.2012[,-ncol(pop.2012)]
pop.2012 <- pop.2012[-c(1:4,6,12,16,24,31,37,43:46),]
rownames(pop.2012) <- c(1:nrow(pop.2012))
colnames(pop.2012) <- c("region",2001:2012)
# population in 10,000 persons

# Total Popolation by Urban and Rural Residence and Birth Rate, Death Rate, Natural
# Growth Rate by Region, 2012
urb.2012 <- read.csv("data/Z0307E12.csv")
urb.2012 <- urb.2012[-c(1:6,8,14,18,26,33,39,45:nrow(urb.2012)),]
rownames(urb.2012) <- c(1:nrow(urb.2012))
urb.2012 <- urb.2012[,-c(10:14)]
colnames(urb.2012) <- c("region","total","urbanpop","urbanprop","ruralpop"
                        ,"ruralprop","birth","death","growth")
# region: Region
# total: Total Population (year-end, 10,000 persons)
# urbanpop: Urban Population-Population
# urbanprop: Urban Population-Proportion
# ruralpop: Rural Population-Population
# ruralprop: Rural Population-Proportion
# birth: Birth Rate 1/1,000
# death: Death Rate 1/1,000
# growth: Natural Growth Rate 1/10,000

# Population by Sex, Educational Attainment and Region, 2012
ea.2012 <- read.csv("data/Z0315E12.csv")
ea.2012 <- ea.2012[-c(1:8,10,16,20,28,35,41,47),]
rownames(ea.2012) <- c(1:nrow(ea.2012))
colnames(ea.2012) <- c("region","age6","age6m","age6f","no","nom"
                       ,"nof","primary","primarym","primaryf","junior"
                       ,"juniorm","juniorf","senior","seniorm","seniorf"
                       ,"college","collegem","collegef")
# region: Region
# age6: Population Aged 6 and Over
# age6m: Population Aged 6 and Over-Male
# age6f: Population Aged 6 and Over-Female
# no: No Schooling
# nom: No Schooling-Male
# nof: No Schooling-Female
# primary: Primary School
# primarym: Primary School-Male
# primaryf: Primary School-Female
# junior: Junior Secondary School
# juniorm: Junior Secondary School-Male
# juniorf: Junior Secondary School-Female
# senior: Senior Secondary School
# seniorm: Senior Secondary School-Male
# seniorf: Senior Secondary School-Female
# college: College and Higher Level
# collegem: College and Higher Level-Male
# collegef: College and Higher Level-Female
