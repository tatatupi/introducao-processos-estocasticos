N=1000
set.seed(001)
a<-round(runif(N,0,1))
aux<-0
for (i in 3:N) {
        if (a[i]==1&a[i-1]==1&a[i-2]==1) {
                aux<-aux+1
        }
}


N2=10000
a2<-round(runif(N2,0,1))
aux2<-0
for (i in 3:N2) {
        if (a2[i]==1&a2[i-1]==1&a2[i-2]==1) {
                aux2<-aux2+1
        }
}

N3=100000
a3<-round(runif(N3,0,1))
aux3<-0
for (i in 3:N3) {
        if (a3[i]==1&a3[i-1]==1&a3[i-2]==1) {
                aux3<-aux3+1
        }
}