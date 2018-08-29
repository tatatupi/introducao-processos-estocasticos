M<-1000
N<-1000
limit<-c(1:N)-c(1:N)
for (j in 1:M) {
        for (i in 1:N) {
                a<-runif(N)
                limit[i]<-sum(a^2)/sum(a)
        }
        a[j]=sum(limit)/N
}


x<-mean(a)
print(x)
