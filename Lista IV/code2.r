
M<-10000 #número de realizações
N<-1000 #quantidade de Xn

X<-matrix(nrow = M, ncol = N)
sum_X<-c(1:M)-c(1:M)

for (i in 1:M)  {
        for (n in 1:N) {
                prob1<-2^(-n-1)#prob Xn=+-2^n
                prob2<-(1/2)*(1-2^(-n)) #prob Xn=1/2(1-2^-n)
                
                u<-runif(1) #VA uniforme para realização
                
                if (u<prob1) {
                        X[i,n]<-2^n
                } else if (u<2*prob1) {
                        X[i,n] <- -(2^n)
                } else if (u<prob2) {
                        X[i,n] <- 1 
                } else {
                        X[i,n] <- -1
                }
        }
        sum_X[i] <- 1/sqrt(N)*sum(X[i,]) #somatório das realizações
}

normal<-rnorm(N)


hist(sum_X, prob=TRUE, breaks=10000,
     xlim=c(-4,4),ylim=c(0,0.5),
     main="Comparação das Distribuições")
curve(dnorm(x, mean=0, sd=1), add=TRUE)