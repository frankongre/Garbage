## Per Capita annual Cash Consumption Expenditure of Urban Households by Region
# 2012
xpd.2012 <- read.csv("data/Z1115E14.csv")
xpd.2012 <- xpd.2012[-c(1:8,10,16,20,28,35,41,47:nrow(xpd.2012)),]
rownames(xpd.2012) <- c(1:nrow(xpd.2012))
colnames(xpd.2012) <- c("region","expenditure","food","grain","tuber","bean","oil","meat","egg","aquatic"
                        ,"vege","condiments","sugar","tobacco","beverage","fruit","cake","milk","other"
                        ,"out","fservice","clothing","garments","material","shoes","cservice","residence"
                        ,"housing","basic","household","durable","deco","bed","daily","furniture","hservice"
                        ,"tnc","transport","communications","ecr","recreation","education","rservice"
                        ,"medical","others","ogood","oservice")
# region: Region
# expenditure: Cash Consumption  
# food: Food
#-- grain: Grain	
#-- tuber: Starches and Tubers	
#-- bean: Beans and Bean Products	
#-- oil: Oil and Fats	
#-- meat: Meat, Poultry and Processed Products	
#-- egg: Eggs	
#-- aquatic: Aquatic Products	
#-- vege: vegetables	
#-- condiments: Condiments	
#-- sugar: Sugar	
#-- tobacco: Tobacco	
#-- beverage: Liquor and Beverages	
#-- fruit:Dried and Fresh Melons and Fruits
#-- cake: Cake	
#-- milk: Milk and Processed Products
#-- other:Other Food
#-- out: Dining Out
#-- fservice: Food Processing Service fees
# clothing: Clothing
#-- garments: Garments
#-- material: Colthing Materials
#-- shoes: Shoes
#-- cservice: Tailoring and Larundering Service Fees
# residence: Residence
#-- housing: Housing
#-- basic: Water, Electricity, Fuels and Others
# household: Household Facilities and Articles
#-- durable: Durable Consumer Goods
#-- deco: Articles for Interior Decoration
#-- bed: Bed Articles
#-- daily: Household Articles for Daily Use
#-- furniture: Furniture Materials
#-- hservice: Household Services
# tnc: Transport and Communications
#-- transport: Transport
#-- communications: Communications
# ecr: Education, Culture and Recreation
#-- recreation: Recreation Articles
#-- education: Education
#-- rservice: Recreation Services
# medical: Health Care and Medical Services
# others: Others
#-- ogood: Other Good
#-- oservice: Other Services

# 2010
xpd.2010 <- read.csv("data/J1016E10.csv")
xpd.2010 <- xpd.2010[-c(1:8,10,16,20,28,35,41,47:nrow(xpd.2010)),]
rownames(xpd.2010) <- c(1:nrow(xpd.2010))
colnames(xpd.2010) <- c("region","expenditure","food","grain","tuber","bean","oil","meat","egg","aquatic"
                        ,"vege","condiments","sugar","tobacco","beverage","fruit","cake","milk","other"
                        ,"out","fservice","clothing","garments","material","shoes","cservice","residence"
                        ,"housing","basic","household","durable","deco","bed","daily","furniture","hservice"
                        ,"tnc","transport","communications","ecr","recreation","education","rservice"
                        ,"medical","others","ogood","oservice")

# 2008
xpd.2008 <- read.csv("data/J0916E08.csv")
xpd.2008 <- xpd.2008[-c(1:9,11,17,21,29,36,42,48:nrow(xpd.2008)),]
rownames(xpd.2008) <- c(1:nrow(xpd.2008))
colnames(xpd.2008) <- c("region","expenditure","food","grain","tuber","bean","oil","meat","egg","aquatic"
                        ,"vege","condiments","sugar","tobacco","beverage","fruit","cake","milk","other"
                        ,"out","fservice","clothing","garments","material","shoes","cservice","residence"
                        ,"housing","basic","household","durable","deco","bed","daily","furniture","hservice"
                        ,"tnc","transport","communications","ecr","recreation","education","rservice"
                        ,"medical","others","ogood","oservice")