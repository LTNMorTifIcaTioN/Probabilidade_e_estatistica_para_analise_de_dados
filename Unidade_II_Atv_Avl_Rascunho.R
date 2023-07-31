# Análise do Custo por Unidade
UN1 = c(15000, 16000, 17000)
UN2 = c(23000, 10000, 7000)
UN3 = c(8500, 14500, 28000)
UN4 = c(16000, 16000, 16000)
UN5 = c(45000, 0, 0)

faturamento = data.frame(UN1, UN2, UN3, UN4, UN5)
head(faturamento)
print("===============================================================================================================")
boxplot(faturamento, main='Boxplot do Custo por Unidade', ylab='Custo por Ano(R$)')
summary(faturamento)
print("===============================================================================================================")

# Análise do Perfil Etário.
PERFIL = c(23, 21, 19, 35, 23, 41, 23, 28, 37, 35)

faturamento = data.frame(PERFIL)
head(faturamento)
print("===============================================================================================================")
boxplot(faturamento, main='Perfil Etario', ylab='Idades')
summary(faturamento)
print("===============================================================================================================")