
#Answers to questions 15 & 17 will be mentioned in the summary report attached to this homework. Graphs for this HW will also be attached as well.

#Question 15

# temperature in degrees (F)

temperature<-c(10,18,35,39,50,65,75,84,52,40,25,21)

# Bill Cost in Dollars ($)

bill<-c(120,90,118,60,81,64,26,38,50,80,100,124)

# scatter plot
plot(x=temperature, y=bill, xlab="temperature", ylab="biil")

#correlation
cor(x=temperature, y=bill)

#fit sample regression model
model<-lm(bill~temperature)
summary(model)

#add regression line to plot
abline(model)

#show residual lines on the plot
segments(temperature, bill, temperature, fitted(model))


temperature<-c(10,10,35,39,50,65,75,84,52,40,25,21)
bill<-c(132,99,129.8,66,89.1,70.4,28.6,41.8,55,88,110,136.4)
plot(x=temperature, y=bill, xlab="temperature", ylab="biil")
cor(x=temperature, y=bill)
model<-lm(bill~temperature)
summary(model)
abline(model)
segments(temperature, bill, temperature, fitted(model))





#Question 17

drinks<-c(3,1,14,7,21,5,25,9)
bmi<-c(20,18,32,24,35,19,38,30)
plot(x=drinks, y=bmi, xlab="drinks", ylab="bmi")
cor(x=drinks, y=bmi)
model<-lm(bmi~drinks)
summary(model)
abline(model)
segments(drinks, bmi, drinks, fitted(model))

#After looking at the it appears that a person who consumes 17 drinks per wee would have a BMI a little over 32.



R Syntax


> temperature<-c(10,18,35,39,50,65,75,84,52,40,25,21)
> bill<-c(120,90,118,60,81,64,26,38,50,80,100,124)
> plot(x=temperature, y=bill, xlab="temperature", ylab="biil")
> cor(x=temperature, y=bill)
[1] -0.8626608
> model<-lm(bill~temperature)
> summary(model)

Call:
lm(formula = bill ~ temperature)

Residuals:
     Min       1Q   Median       3Q      Max 
-23.8971 -15.2252   0.0385  10.7342  29.2537 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 131.1766    10.8468  12.094 2.72e-07 ***
temperature  -1.2123     0.2248  -5.394 0.000304 ***
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1 

Residual standard error: 17.31 on 10 degrees of freedom
Multiple R-squared: 0.7442,     Adjusted R-squared: 0.7186 
F-statistic: 29.09 on 1 and 10 DF,  p-value: 0.0003042 

> abline(model)
> segments(temperature, bill, temperature, fitted(model))
> temperature<-c(10,10,35,39,50,65,75,84,52,40,25,21)
> bill<-c(132,99,129.8,66,89.1,70.4,28.6,41.8,55,88,110,136.4)
> plot(x=temperature, y=bill, xlab="temperature", ylab="biil")
> cor(x=temperature, y=bill)
[1] -0.8412342
> model<-lm(bill~temperature)
> summary(model)

Call:
lm(formula = bill ~ temperature)

Residuals:
    Min      1Q  Median      3Q     Max 
-28.483 -18.037   2.915  11.765  33.644 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 140.0145    12.2413   11.44 4.58e-07 ***
temperature  -1.2531     0.2547   -4.92 0.000605 ***
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1 

Residual standard error: 20.35 on 10 degrees of freedom
Multiple R-squared: 0.7077,     Adjusted R-squared: 0.6784 
F-statistic: 24.21 on 1 and 10 DF,  p-value: 0.0006047 

> abline(model)
> segments(temperature, bill, temperature, fitted(model))
> drinks<-c(3,1,14,7,21,5,25,9)
> bmi<-c(20,18,32,24,35,19,38,30)
> plot(x=drinks, y=bmi, xlab="drinks", ylab="bmi")
> cor(x=drinks, y=bmi)
[1] 0.9549404
> model<-lm(bmi~drinks)
> summary(model)

Call:
lm(formula = bmi ~ drinks)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.1790 -0.9992 -0.6077  0.6070  4.3927 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  17.8936     1.4524  12.320 1.74e-05 ***
drinks        0.8571     0.1087   7.881 0.000221 ***
---
Signif. codes:  0 �***� 0.001 �**� 0.01 �*� 0.05 �.� 0.1 � � 1 

Residual standard error: 2.489 on 6 degrees of freedom
Multiple R-squared: 0.9119,     Adjusted R-squared: 0.8972 
F-statistic: 62.11 on 1 and 6 DF,  p-value: 0.0002211 

> abline(model)
> segments(drinks, bmi, drinks, fitted(model))
> 
