A2<-0 #inicializa a vari�vel de contagem dos eventos
n=100000 #n�mero de experimentos

for (i in 1:n) {
        Adultos<-c(0,0,0,0) #inicializa vetor de adultos com 0 (1 significa em casa, 0 significa fora)
        sim<-c(runif(1),runif(1),runif(1),runif(1)) #gera vetor de n�meros aleat�rios uniformes para simular os eventos
        for (j in 1:length(sim))
                if (sim[j]>0.6) { #probabilidade de estar em casa
                        Adultos[j]<-1
                }
        if (sum(Adultos)==2) { #experimento com 2 adultos em casa
                A2<-A2+1
        }
}

print(A2/n) #calcula a frequ�ncia relativa do experimento

Pk=factorial(4)/(factorial(4-2)*factorial(4-2))*0.4^2*0.6^2
print(Pk)