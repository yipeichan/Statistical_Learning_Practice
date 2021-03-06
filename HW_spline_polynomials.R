## Load the data from the file 7.R.RData, and plot it using plot(x,y). 
# 1. What is the slope coefficient in a linear regression of y on x (to within 10%)? -0.67483
load("/Users/yi-peichan/Desktop/Statistical_Learning_Practice/7.R.RData")
plot(x,y)
fit=lm(y~x)
summary(fit)

#2. For the model y ~ 1+x+x^2, what is the coefficient of x (to within 10%)? 7.771e+01
fita=lm(y~1+x+I(x^2))
fitb=lm(y~poly(x,2))  
summary(fita)
summary(fitb)
plot(fitted(fita),fitted(fitb)) 
#the two methods have different coefficients; however, the fits are the same


