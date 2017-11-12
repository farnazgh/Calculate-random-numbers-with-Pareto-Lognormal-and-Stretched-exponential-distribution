x = runif(100,0,1)

##################################################pareto
a=2
b=2.5

y = a / exp((1/b)*log(1-x)) 


range(y)
mean(y)

#jpeg('/home/farnaz/Desktop/rhist1.jpg')
hist(y)
#dev.off()

#jpeg('/home/farnaz/Desktop/rplot1.jpg')
plot(y, type='l')
#dev.off()

##################################################lognormal

mu = 0;
sigma = 0.5;
  
invErf <-  function(x) {
  # argument x must lie between -1 and 1
  qnorm((1 + x) /2) / sqrt(2)
} 

y = exp( (sigma*sqrt(2)*invErf(2*x - 1))+mu )

range(y)
mean(y)

#jpeg('/home/farnaz/Desktop/rhist.jpg')
hist(y)
#dev.off()

#jpeg('/home/farnaz/Desktop/rplot.jpg')
plot(y, type='l')
#dev.off()

##############################################stretched exponential
beta = 0.52
y = (-log(x))^(1/beta)

range(y)
mean(y)

#jpeg('/home/farnaz/Desktop/rhist.jpg')
hist(y)
#dev.off()

#jpeg('/home/farnaz/Desktop/rplot.jpg')
plot(y, type='l')
#dev.off()
