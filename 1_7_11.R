#1.7.11 (a)
x<-seq(-5,5,.01); y<-.5+atan(x)/pi; y2<-1/(pi*(1+x^2))
par(mfrow=c(1,2));plot(y~x);plot(y2~x)

cdf_a<-function(x){
  y<-.5+atan(x)/pi
  return(y)
}

quantile(pdf_a(x),0.25) #the first quantile

quantile(pdf_a(x),0.6) # the 0.6 quantile


#(b)

cdf_b<-function(x){
  y<-exp(-exp(-x))
  return(y)
}

pdf_b<-function(x){
  y<-exp(-exp(-x))*exp(-x)
  return(y)
}

par(mfrow=c(1,2));plot(cdf_b(x)~x);plot(pdf_b(x)~x)

quantile(pdf_b(x),0.25) #the first quantile 
quantile(pdf_b(x),0.60) #the 0.6 quantile

#(c)
x<-seq(-5,5,.01)

cdf_c<-function(x){
  y<-(1+exp(-x))^(-1)
  return(y)
}

pdf_c<-function(x){
  y<-(-(1+exp(-x))^(-2))*(-exp(-x))
  return(y)
}

par(mfrow=c(1,2));plot(cdf_c(x)~x);plot(pdf_c(x)~x)

quantile(pdf_c(x),0.25) #the first quantile 
quantile(pdf_c(x),0.60) #the 0.6 quantile



#(d)
x<-1:10
pmf_d<-function(x){
  y<-(1/2)^x
  return(y)
}


cdf_d<-function(x){
  x_line<-1:x
  Sum<-sum(pmf_d(x_line))
  return(Sum)
}

par(mfrow=c(1,2));plot(x,lapply(x,cdf_d));plot(x,pmf_d(x))

