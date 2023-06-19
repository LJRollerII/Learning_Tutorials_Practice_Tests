#Question 14

left<-c(1,4,7,10,13)
right<-c(1,2,3,4,5)

cor(x=left, y=right)

left<-c(4,5,8,9,10)
right<-c(2,4,5,1,4)

cor(x=left, y=right)

left<-c(1,4,7,10,13)
right<-c(5,4,3,2,1)

cor(x=left, y=right)

left<-c(6,9,12,15,18)
right<-c(6,7,8,9,10)

cor(x=left, y=right)

Value has not changed

left<-c(5,20,35,50,65)
right<-c(5,10,15,20,25)
cor(x=left, y=right)

Value has not changed

R does not change even if you add or subtract the scores by a constant.

#Question 19

left<-c(100,73,65,63,53,50,47,45,40,39,39,29,23,13,12)
right<-c(80,95,85,52,72,50,40,30,28,42,36,41,35,16,10)
cor(x=left, y=right)

cor(x=left, y=right, method= "spearman")

#Question 20

left<-c(5,6,9,9,11)
right<-c(6,8,4,8,7)
cor(x=left, y=right)
plot(x=left, y=right, xlab= "left", ylab="right")

left<-c(5,6,9,9,11,26)
right<-c(6,8,4,8,7,25)
cor(x=left, y=right)
plot(x=left, y=right, xlab= "left", ylab="right")

Yes there's a difference between answers b and e because answer e has a much stronger correlation than b. Answer e has a positive correaltion, while answer e has a negative correlation.




> left<-c(1,4,7,10,13)
> right<-c(1,2,3,4,5)
> cor(x=left, y=right)
[1] 1
> left<-c(4,5,8,9,10)
> right<-c(2,4,5,1,4)
> cor(x=left, y=right)
[1] 0.1058018
> left<-c(1,4,7,10,13)
> right<-c(5,4,3,2,1)
> cor(x=left, y=right)
[1] -1
> left<-c(6,9,12,15,18)
> right<-c(6,7,8,9,10)
> cor(x=left, y=right)
[1] 1
> left<-c(5,20,35,50,65)
> right<-c(5,10,15,20,25)
> cor(x=left, y=right)
[1] 1
> left<-c(100,73,65,63,53,50,47,45,40,39,39,29,23,13,12)
> right<-c(80,95,85,52,72,50,40,30,28,42,36,41,35,16,10)
> cor(x=left, y=right)
[1] 0.8518644
> cor(x=left, y=right, method= "spearman")
[1] 0.8632711
> left<-c(5,6,9,9,11)
> right<-c(6,8,4,8,7)
> plot(x=left, y=right, xlab= "left", ylab="right")
> left<-c(5,6,9,9,11,26)
> right<-c(6,8,4,8,7,25)
> plot(x=left, y=right, xlab= "left", ylab="right")
> left<-c(5,6,9,9,11)
> right<-c(6,8,4,8,7)
> cor(x=left, y=right)
[1] -0.06099375
> plot(x=left, y=right, xlab= "left", ylab="right")
> left<-c(5,6,9,9,11,26)
> right<-c(6,8,4,8,7,25)
> cor(x=left, y=right)
[1] 0.9364365
> plot(x=left, y=right, xlab= "left", ylab="right")
> 
