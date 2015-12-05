gbg.reg <- gbg.2012[-1,]
pop.reg <- pop.2012[-1,]
xpd.reg <- xpd.2012[-1,]
urb.reg <- urb.2012[-1,]
ea.reg <- ea.2012[-1,]
gbg <- as.numeric(as.character(gbg.reg$garbage)) # 10,000 tons
pop <- as.numeric(as.character(pop.reg$"2012")) # 10,000 persons
xpd <- as.numeric(as.character(xpd.reg$expenditure))
urb.prop <- as.numeric(as.character(urb.reg$urbanprop))*100
edu.prop <- (as.numeric(as.character(ea.reg$age6)) - as.numeric(as.character(ea.reg$no)))*100/
  as.numeric(as.character(ea.reg$age6))
jun.prop <- (as.numeric(as.character(ea.reg$age6)) - as.numeric(as.character(ea.reg$no))
             -as.numeric(as.character(ea.reg$primary)))*100/as.numeric(as.character(ea.reg$age6))
sen.prop <- (as.numeric(as.character(ea.reg$age6)) - as.numeric(as.character(ea.reg$no))
             -as.numeric(as.character(ea.reg$primary))-as.numeric(as.character(ea.reg$junior))
)*100/as.numeric(as.character(ea.reg$age6))
coll.prop <- as.numeric(as.character(ea.reg$college))*100/as.numeric(as.character(ea.reg$age6))


gcap <- (gbg*10000)/(pop*10000) #garbage disposal as tons per capita
xpd.1k <- xpd/1000 # expenditure as thousand yuan
newdata <- cbind(gcap,xpd.1k,edu.prop,jun.prop,sen.prop,coll.prop)
newdata <- as.data.frame(newdata)
attach(newdata)




model.0<- lm(gcap~xpd.1k)
summary(model.0)


model.1<- lm(gcap~xpd.1k+xpd.1k*edu.prop)
summary(model.1)
model.2<- lm(gcap~xpd.1k+xpd.1k*jun.prop)
summary(model.2)
model.3<- lm(gcap~xpd.1k+xpd.1k*sen.prop)
summary(model.3)
model.4<- lm(gcap~xpd.1k+xpd.1k*coll.prop)
summary(model.4)

coef.1 <- model.1$coefficients
edu.fun <- function(xpd.1k,edu.prop){
  return(coef.1[1]+coef.1[2]*xpd.1k+coef.1[3]*edu.prop+coef.1[4]*xpd.1k*edu.prop)
}
join.1 <- -1*(coef.1[3])/(coef.1[4])
hori.1 <- -1*(coef.1[2]/(coef.1[4]))
curve(edu.fun(x,hori.1)
      ,xlim = c(join.1,26)
      ,ylim = c(-.5,.6)
      ,xlab = "Per Capita Cash Consumption Expenditure (thousand yuan)"
      ,ylab = "Per Capita Garbage Disposal (ton)"
      ,col = "grey")
curve(edu.fun(x,max(edu.prop))
      ,add = TRUE
      ,col = "red")
curve(edu.fun(x,min(edu.prop))
      ,add = TRUE
      ,col = "green")

coef.2 <- model.2$coefficients
jun.fun <- function(xpd.1k,jun.prop){
  return(coef.2[1]+coef.2[2]*xpd.1k+coef.2[3]*jun.prop+coef.2[4]*xpd.1k*jun.prop)
}
join.2 <- -1*(coef.2[3])/(coef.2[4])
hori.2 <- -1*(coef.2[2]/(coef.2[4]))
curve(jun.fun(x,hori.2)
      ,xlim = c(join.2,26)
      ,ylim = c(-.5,.6)
      ,xlab = "Per Capita Cash Consumption Expenditure (thousand yuan)"
      ,ylab = "Per Capita Garbage Disposal (ton)"
      ,col = "grey")
curve(jun.fun(x,max(jun.prop))
      ,add = TRUE
      ,col = "red")
curve(jun.fun(x,min(jun.prop))
      ,add = TRUE
      ,col = "green")