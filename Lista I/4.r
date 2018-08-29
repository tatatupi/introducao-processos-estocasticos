n=1000000 #número de experimentos

Y <- runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)+runif(n,0,1)

Py<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0) #inicializando o vetor das probabilidades
freq<-0
aux<-0

for (i in 1:length(Py)) {
        Yaux <- Y-0.5*i 
        Paux[i]<-sum(Yaux<0)
        if (i>1) {
                Py[i]<-(Paux[i]-Paux[i-1])/n
        }
        else {
                Py[i]<-Paux[i]/n
        }
}

intervals<-c("[0 0.5)","[0.5 1)","[1 1.5)","[1.5 2)","[2 2.5)",
             "[2.5 3)","[3 3.5)","[3.5 4)","[4 4.5)","[4.5 5)",
             "[5 5.5)","[5.5 6)","[6 6.5)","[6.5 7)","[7 7.5)",
             "[7.5 8)","[8 8.5)","[8.5 9)","[9 9.5)","[9.5 10)")

result<-data.frame(intervals,Py)

print(result)


X1 <- sum(Y<0.5)/length(Y)
X2 <- sum(Y>=0.5 & Y<1)/length(Y)
X3 <- sum(Y>=1 & Y<1.5)/length(Y)
X4 <- sum(Y>=1.5 & Y<2)/length(Y)
X5 <- sum(Y>=2 & Y<2.5)/length(Y)
X6 <- sum(Y>=2.5 & Y<3)/length(Y)
X7 <- sum(Y>=3 & Y<3.5)/length(Y)
X8 <- sum(Y>=3.5 & Y<4)/length(Y)
X9 <- sum(Y>=4 & Y<4.5)/length(Y)
X10 <- sum(Y>=4.5 & Y<5)/length(Y)

cat("1) ",X1);
cat("\n2) ",X2);
cat("\n3) ",X3);
cat("\n4) ",X4);
cat("\n5) ",X5);
cat("\n6) ",X6);
cat("\n7) ",X7);
cat("\n8) ",X8);
cat("\n9) ",X9);
cat("\n10) ",X10);