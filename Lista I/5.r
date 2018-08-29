N_infty=100 #limite superior do somatório
N_seq=20 #quantidade de números de Bell a calcular

##Fórmula 1:
Bn <- c(1:N_seq)-c(1:N_seq)
Bn[1]<-1;
for (n in 1:(N_seq)) {
        for (k in 1:N_infty) {
                Bn[n+1]<-Bn[n+1]+k^n/factorial(k) #i+1 porque o item 0 não existe no R
        }
        Bn[n+1]<-Bn[n+1]/exp(1)
}

print(toString(Bn[1:20])) #trunca os números e imprimie como string, para melhor visualização


##Fórmula 2:
Bnn <- c(1:N_seq)-c(1:N_seq)
aux<-Bnn

Bnn[1] <- 1 #inicializa os dois primeiros elementos do vetor / casos especiais
Bnn[2] <- 1

comb = function(n, x) { #função para análise combinatória
        return(factorial(n) / (factorial(x) * factorial(n-x)))
}


for (n in 2:(N_seq)) {
        aux[1]<-1
        for (k in 2:n) {
                aux[k]<-comb(n-1,k-1)*Bnn[k]
        }
        Bnn[n+1]<-sum(aux)
}

print(toString(Bnn[1:20])) #trunca os números e imprimie como string, para melhor visualização