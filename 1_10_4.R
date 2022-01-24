x<-seq(-5,5,.01)
laplace_pdf<-function(x){
  y<-0.5*(exp(-abs(x)))
  return(y)
}

laplace_cdf<-function(x){
  if (x>=0) {
    y<-(1-0.5*(exp(-x)))}
  else {
    y<-(0.5*(exp(x)))}
  return(y)
}

par(mfrow=c(1,2));plot(x,laplace_pdf(x));plot(x,lapply(x,laplace_cdf))

