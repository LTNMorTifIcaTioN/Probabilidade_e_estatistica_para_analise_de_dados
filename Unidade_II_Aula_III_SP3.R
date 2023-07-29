# Análise das medidas-resumo dos faturamentos nos estados de São Paulo, Minas Gerais e Rio de Janeiro.
SP = c(49889, 47101, 44777, 25721, 42555, 29781, 42641, 35982, 34953, 26302, 46122, 48999)
RJ = c(34444, 26223, 41194, 41846, 22262, 14354, 30757, 39891, 33098, NA, NA, NA)
MG = c(16357, 13303, 15715, 16569, 20199, 18904, 16428, 20444, 27301, 24687, 27493, NA)

faturamento = data.frame(SP, RJ, MG)
head(faturamento)
print("===============================================================================================================")
boxplot(faturamento, main='Boxplot do Faturamento por UF', ylab='Faturamento(R$)')
summary(faturamento)