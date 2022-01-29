<<<<<<< HEAD
###3.1.19###
psum <- function(v){
  p<-0; psum <- c()
  for(j in 1:length(v)){p<-p+v[j]; psum <- c(psum,p)}
  return(psum)}
multitrial <- function(p){
  pr <- c(0,psum(p))
  r <- runif(1); ic <- 0; j <- 1
  while(ic==0){if((r > pr[j]) && (r <= pr[j+1]))
  {multitrial <-j; ic<-1}; j<- j+1}
  return(multitrial)}

###(a)###
ps=c(.3,.2,.2,.2,.1)
multitrial(ps)

results<-c()
for(i in 1:10){
  results[i]<-multitrial(ps)
}
t.results<-table(results)


###(b)###
results2<-c()
for(i in 1:10000){
  results2[i]<-multitrial(ps)
}
t.results2<-table(results2)

estimates<-c()

for(i in 1:5){
  estimates[i]<-t.results2[i]/10000
}
par(mfrow=c(1,2))
plot(1:5,estimates)
plot(1:5,ps,col='red')

###3.1.20###
###(a)###
G=0*(ps[1]+ps[2])+1*ps[3]+2*ps[4]+20*ps[5]-5
print(G)

###(b)###
num_simul=10000
simulation=c()
for(i in 1:num_simul){
  simulation[i]=multitrial(ps)
}
result3=table(simulation)

revenue=0*(result3[1]+result3[2])+1*result3[3]+2*result3[4]+20*result3[5]
cost=5*num_simul
E_G_S<-(revenue-cost)/num_simul
E_G_S
=======
###3.1.19###
psum <- function(v){
  p<-0; psum <- c()
  for(j in 1:length(v)){p<-p+v[j]; psum <- c(psum,p)}
  return(psum)}
multitrial <- function(p){
  pr <- c(0,psum(p))
  r <- runif(1); ic <- 0; j <- 1
  while(ic==0){if((r > pr[j]) && (r <= pr[j+1]))
  {multitrial <-j; ic<-1}; j<- j+1}
  return(multitrial)}

###(a)###
ps=c(.3,.2,.2,.2,.1)
multitrial(ps)

results<-c()
for(i in 1:10){
  results[i]<-multitrial(ps)
}
t.results<-table(results)


###(b)###
results2<-c()
for(i in 1:10000){
  results2[i]<-multitrial(ps)
}
t.results2<-table(results2)

estimates<-c()

for(i in 1:5){
  estimates[i]<-t.results2[i]/10000
}
par(mfrow=c(1,2))
plot(1:5,estimates)
plot(1:5,ps,col='red')

###3.1.20###
###(a)###
G=0*(ps[1]+ps[2])+1*ps[3]+2*ps[4]+20*ps[5]-5
print(G)

###(b)###
num_simul=10000
simulation=c()
for(i in 1:num_simul){
  simulation[i]=multitrial(ps)
}
result3=table(simulation)

revenue=0*(result3[1]+result3[2])+1*result3[3]+2*result3[4]+20*result3[5]
cost=5*num_simul
E_G_S<-(revenue-cost)/num_simul
E_G_S
>>>>>>> 0165274d0309d9096bc54fc73c4a45c2687b9c15
