

d=0.000001 #define o valor de delta
p=0 #inicializa a variável probabilidade
L1=5/d #calcula o limite inferior
L2=6/d #calcula o limite superior

for (n in L1:L2) {
        p=p+1/sqrt(2*pi)*exp(-0.5*(n*d-7)^2)*d #calcula a aproximação recursivamente
}

print(p)