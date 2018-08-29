# n=100000
# 
# X1=runif(n,0,1)
# X2=runif(n,0,1)
# 
# Y=round(X1)*round(X2)
# 
# Prob1<-sum(Y==1)/length(Y)
# Prob0<-sum(Y==0)/length(Y)
# 
# cat("Probability of Y=1 ",Prob1,"\nProbability of Y=0 ",Prob0)

# n<-100000
# 
# X1<-runif(n,0,1)
# X2<-runif(n,0,1)
# 
# Y<-round(X1)+round(X2)
# 
# snake_eyes<-sum(Y==2)/length(y)
# 
# cat("Probability of snake eyes is: ", snake_eyes)


# d=0.000001 #define o valor de delta
# p=0 #inicializa a variável probabilidade
# L1=-1/d #calcula o limite inferior
# L2=1/d #calcula o limite superior
# 
# for (n in L1:L2) {
#         p=p+1/sqrt(2*pi)*exp(-0.5*(n*d)^2)*d #calcula a aproximação recursivamente
# }
# 
# print(p)


# n=1000000 #número de experimentos
# X=0
# 
# for (i in 1:12) {
#         X=X+(runif(n,0,1)-0.5)
# }
# 
# hist(X)
# curve(1/sqrt(2*pi)*exp(-1/2*x^2),from=-4, to=4)


# n=1000000 #número de experimentos
# X=runif(n,0,1)*runif(n,0,1)
# 
# hist(X,probability=TRUE)


# n<-10000
# r<-runif(n,0,1)
# x<-0
# 
# for (i in 1:n) {
#         if (r[i]<0.1) {
#                 x[i]<-1
#         } else if (r[i]<0.3) {
#                 x[i]<-2
#         } else {
#                 x[i]<-3
#         }
# }
# 
# probs<-c(sum(x==1)/n,sum(x==2)/n,sum(x==3)/n)
# cat("Probability X=1 is ",probs[1], "\nProbability X=2 is ", probs[2], "\nProbability X=3 is ", probs[3])

# n<-10000
# x<-runif(n,0,1)
# print(mean(x))


# n<-10000
# x<-rnorm(n,0,1)+1
# print(mean(x))
# 
# n<-10000
# x<-rnorm(n,0,1)^2
# print(mean(x))
# hist(x)

# n<-10000
# x<-runif(n,0,1)*2
# print(mean(x))
# hist(x)

# n<-1000000
# X1<-rnorm(n,0sd,1)
# X2<-rnorm(n,0,1)
# Y<-X1-X2

# hist(X1,probability = TRUE)
# hist(Y,probability = TRUE)

# n<-1000000
# X1<-rnorm(n,0,1)
# hist(X1,probability = TRUE)

# n<-100000
# X<-rnorm(n,0,1)
# Y<-rnorm(n,0,1)
# dist<-sqrt(X^2+Y^2)
# print(mean(dist))

# 
# n<-100000
# U<-runif(n,0,1)
# X<-sqrt(U)
# cat("Mean of Sqrt(U) is ", mean(X), "\nSqrt(mean(U)) is ",sqrt(mean(U)))


# n<-1000
# X1<-rnorm(n,0,1)
# X2<-rnorm(n,0,1)
# Y1<-X1+0.1*X2
# Y2<-X1+0.2*X2
# plot(Y1,Y2,panel.first=grid())

n<-10000
U1<-runif(n,0,1)
U2<-runif(n,0,1)
X1<-U1
X2<-U1+U2
plot(X1,X2,panel.first=grid())



