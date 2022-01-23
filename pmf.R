#Code for excercise 1.6.5 in IMS hogg 8th

#Code for pmf
pmf<-function(x){
  if(x == 0 | 1 | 2 | 3 | 4 | 5)
    p<-choose(20,x)*choose(80,5-x)/choose(100,5)
  else
    p<-0
return(p)
}


#Check the plot of pmf
x_line<-0:5
plot(x_line, pmf(x_line))
sum(pmf(x_line))

#Code for cdf
cdf<-function(x){
  x_pnum<-0:x
  sum(pmf(x_pnum))
}

#Check the plot of cdf
plot(x_line, lapply(x_line,cdf))
