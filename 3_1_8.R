###(a)###
x<-0:15; plot(dbinom(x,15,.2)~x)

###(b)###
par(mfrow=c(3,3))
prob<-seq(0.1,0.9,0.1)
for(i in prob) {
  plot(dbinom(x,15,i)~x)
  title(paste('p=',i))
}

###(c)###
par(mfrow=c(2,2))
n<-c(10,20,50,200)
for(i in n) {
  plot(dbinom(x,i,0.05)~x)
  title(paste('n=',i))
<<<<<<< HEAD
}
=======
}
>>>>>>> 0165274d0309d9096bc54fc73c4a45c2687b9c15
