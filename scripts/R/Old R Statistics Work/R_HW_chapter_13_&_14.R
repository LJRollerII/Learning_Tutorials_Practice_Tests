#Problem 17

x1<-c(25,18,3,42,16,20,23,32,60,40,27,7,13,23,16)
x2<-c(32,24,7,40,19,25,23,35,65,43,28,11,12,32,28)
t.test(x=x1, y=x2, alternative="two.sided", paired = FALSE, var.equal=TRUE)

> x1<-c(25,18,3,42,16,20,23,32,60,40,27,7,13,23,16)
> x2<-c(32,24,7,40,19,25,23,35,65,43,28,11,12,32,28)
> t.test(x=x1, y=x2, alternative="two.sided", paired = FALSE, var.equal=TRUE)

        Two Sample t-test

data:  x1 and x2 
t = -0.741, df = 28, p-value = 0.4648
alternative hypothesis: true difference in means is not equal to 0 
95 percent confidence interval:
 -14.805861   6.939194 
sample estimates:
mean of x mean of y 
 24.33333  28.26667 


When done by hand, values are different from these. You need to do a dependent samples test in order to match results done by hand.



#Problem 22


x1<-c(7.1,6.8,6.7,7.3,7.5,6.2,6.9,6.5,7.2)
x2<-c(8.2,7.5,7.7,7.8,8.0,7.4,7.3,6.5)
t.test(x=x1, y=x2, alternative="two.sided", paired = FALSE, var.equal=TRUE)


> x1<-c(7.1,6.8,6.7,7.3,7.5,6.2,6.9,6.5,7.2)
> x2<-c(8.2,7.5,7.7,7.8,8.0,7.4,7.3,6.5)
> t.test(x=x1, y=x2, alternative="two.sided", paired = FALSE, var.equal=TRUE)

        Two Sample t-test

data:  x1 and x2 
t = -2.8252, df = 15, p-value = 0.01279
alternative hypothesis: true difference in means is not equal to 0 
95 percent confidence interval:
 -1.120898 -0.156880 
sample estimates:
mean of x mean of y 
 6.911111  7.550000 
