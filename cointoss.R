##Coin_toss Simulation##
##Head ='0' & Tail ='1'##
## n = # of toss(experiment) ##
## t = # of the Head(event) ##
c_toss <- function(n){
  dist <-  sample(0:1, n, replace = T)
  t = sum(dist ==0) 
  
  return(t/ n)
}

# # of the experiment #
x_1<-1:10
x_2<-1:100
x_3<-1:1000


#Visualization
par(mfrow=c(1,3));plot(x_1,lapply(x_1,c_toss));plot(x_2,lapply(x_2,c_toss));plot(x_3,lapply(x_3,c_toss),)
