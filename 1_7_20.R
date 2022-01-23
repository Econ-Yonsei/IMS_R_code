x<-seq(0,10,.01)

pdf<-function(x){
  y<-1/(1+5*x)^(1.2)
  return(y)
}

cdf<-function(x){
  y<-1-1+5*x^(-0.2)
  return(y)
}

plot(x,pdf(x))
