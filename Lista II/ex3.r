Stir=0
Fact=0
for (i in 1:100) {
        Stir[i]=sqrt(2*pi)*i^(i+1/2)*exp(-i)
        Fact[i]=factorial(i)
}
result=data.frame(Stir,Fact,log(Stir),log(Fact))
print(result)

i=200
Stir[101]=sqrt(2*pi)*i^(i+1/2)*exp(-i)
print(stir[101])