n=10000
eventos=0
for (i in 1:n) {
        x=0
        if (runif(1)<0.5) { #A ganha de B e joga com C
                x="A" 
                if (runif(1)<0.5) { #A ganha de C e � o campe�o
                        x=paste(x,"A")
                } else {
                        x=paste(x,"C") #C ganha de A e joga com B
                        if (runif(1)<0.5) {
                                x=paste(x,"C") #C ganha e � o campe�o
                        }
                        else { #B ganha e joga com A
                                x=paste(x,"B")
                                if (runif(1)<0.5) { #B ganha e � o campe�o
                                        x=paste(x,"B")
                                } else {
                                        x=paste(x,"A") #A ganha e � o campe�o
                                }
                        }
                }
        } else { #B ganha de A e joga com C
                x="B"
                if (runif(1)<0.5) { #B ganha de C e � o campe�o
                        x=paste(x,"B")
                } else {
                        x=paste(x,"C") #C ganha de B e joga com A
                        if (runif(1)<0.5) {
                                x=paste(x,"C") #C ganha e � o campe�o
                        }
                        else { #A ganha e joga com B
                                x=paste(x,"A")
                                if (runif(1)<0.5) { #A ganha e � o campe�o
                                        x=paste(x,"A")
                                } else {
                                        x=paste(x,"B") #B ganha e � o campe�o
                                }
                        }
                }
        }
        eventos[i]=x
}
eventos<-data.frame(table(eventos))
eventos["prob"]<-eventos$Freq/n
print(eventos)