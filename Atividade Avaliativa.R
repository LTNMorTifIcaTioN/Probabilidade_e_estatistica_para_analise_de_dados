# Análise do Custo por Unidade
#Amostra = c(710, 633, 452, 377, 543)
#JackknifeI = c( 633, 452, 377, 543)
#JackknifeII = c(710, 452, 377, 543)
#JackknifeIII = c(710, 633, 377, 543)
#JackknifeIV = c(710, 633, 452, 543)
#JackknifeV = c(710, 633, 452, 377)

#energia = data.frame(Amostra, JackknifeI, JackknifeII, JackknifeIII, JackknifeIV, JackknifeV)
#head(energia)
#print("===============================================================================================================")
#boxplot(energia, main='Boxplot da Energia Gerada', ylab='Milhoes de KWh')
#summary(energia)
#print("===============================================================================================================")
#print(((sd(JackknifeI)+sd(JackknifeII)+sd(JackknifeIII)+sd(JackknifeIV)+sd(JackknifeV))/5))#-sd(Amostra))
#print(((1.96^2)*(0.5)*(1-0.5))/(0.05^2))

#idade = c(23, 21, 19, 35, 23, 41, 23, 28, 37, 35)
#summary(idade)
#library(modeest)
#print(mfv(idade))

# Análise do Custo por Unidade
Amostra = c(505, 410, 480, 520, 495)
JackknifeI = c(410, 480, 520, 495)
JackknifeII = c(505,480, 520, 495)
JackknifeIII = c(505, 410,520, 495)
JackknifeIV = c(505, 410, 480, 495)
JackknifeV = c(505, 410, 480, 520)

#energia = data.frame(Amostra, JackknifeI, JackknifeII, JackknifeIII, JackknifeIV, JackknifeV)
#head(energia)
#print("===============================================================================================================")
#boxplot(energia, main='Boxplot da Energia Gerada', ylab='Milhoes de KWh')
#summary(energia)
#print("===============================================================================================================")
#print(((sd(JackknifeI)+sd(JackknifeII)+sd(JackknifeIII)+sd(JackknifeIV)+sd(JackknifeV))/5)-sd(Amostra))
#print(((1.96^2)*(0.5)*(1-0.5))/(0.05^2))

alpha = 0.05

z_critico = qnorm(1-alpha/2, mean = 0, sd = 1)
print(z_critico)

# Agora iremos obter o valor de p^ estimado
p_est = ((4)+(7))/(40+45)
z_calc = ((4/40)-(7/45))/(sqrt((p_est*(1-p_est)/40)+(p_est*(1-p_est)/45)))
print(z_calc)
print(z_calc > p_est)