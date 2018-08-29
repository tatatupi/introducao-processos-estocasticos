n=10000 #número de experimentos

X <- runif(n,0,1)+runif(n,0,1)

Xa <- sum(X<0.5)/length(X)
Xb <- sum(X>=0.5 & X<1)/length(X)
Xc <- sum(X>=1 & X<1.5)/length(X)
Xd <- sum(X>=1.5 & X<=2)/length(X)
Xe <- sum(X>2)/length(X)

cat("a) ",Xa);
cat("\nb) ",Xb);
cat("\nc) ",Xc);
cat("\nd) ",Xd);
cat("\ne) ",Xe);

