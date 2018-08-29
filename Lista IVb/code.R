alpha=0.05
power=0.8
delta=1

alpha_corrigido=alpha/2

nt <- ceiling(power.t.test(power=power,delta=delta,sd=delta,sig.level=alpha_corrigido,
                           type="paired",alternative="one.sided")$n)