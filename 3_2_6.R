par(mfrow=c(3,3))
x=0:35
lam=seq(2,18,2)
for(y in lam){
  plot(dpois(x,y)~x)
title(paste("Mean is",y))
}