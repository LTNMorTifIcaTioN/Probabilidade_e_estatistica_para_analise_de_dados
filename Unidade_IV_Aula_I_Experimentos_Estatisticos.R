# TESTE A/B

# Gerando os conjuntos de dados
percent_A = c(0.3, 0.35, 0.36, 0.36, 0.34, 0.34, 0.32, 0.32, 0.33, 0.34, 0.35, 0.29, 0.33, 0.34, 0.33)
fat_A = c(16930, 13333, 10281, 16550, 13258, 11222, 15250, 12488, 8140, 11194, 10131, 11292, 13127, 13432, 12245)
percent_B = c(0.43, 0.32, 0.43, 0.36, 0.41, 0.33, 0.32, 0.36, 0.42, 0.43, 0.42, 0.43, 0.38, 0.43, 0.42)
fat_B = c(28303, 22888, 25935, 23650, 26185, 28135, 19250, 21058, 26857, 23750, 21384, 25604, 22350, 23450, 25086)
visitas_A = c(1200, 1300, 1100, 1300, 1200, 1300, 1500, 1400, 1300, 1400, 1200, 1500, 1200, 1100, 1300)
visitas_B = c(1400, 1100, 1300, 1100, 1200, 1300, 1000, 1100, 1400, 1300, 1200, 1500, 1600, 1100, 1300)

summary(data.frame(percent_A, percent_B, fat_A, fat_B))
print("==============================================================================================================")

# Teste para proporções
# Consideraremos as seguintes hipóteses:
# H0 : pA = pB | H1 : pA - pB
# H0 : pA =/= pB | H1 : pA =/= pB
# O Teste é Bilateral, e alpha = 0,05 (5%)

# Cálculo Manual
total_compras_a = sum(percent_A*visitas_A)
total_visitas_a = sum(visitas_A)
total_compras_b = sum(percent_B*visitas_B)
total_visitas_b = sum(visitas_B)
prop_A = total_compras_a/total_visitas_a
prop_B = total_compras_b/total_visitas_b
prop_geral = (total_visitas_a*prop_A + total_visitas_b*prop_B)/(total_visitas_a+total_visitas_b)
alpha = 0.05
Z_calc = (prop_A-prop_B)/(sqrt((prop_geral*(1-prop_geral)/sum(visitas_A))+(prop_geral*(1-prop_geral)/sum(visitas_B))))
cat('Valor de Z_calc: ', Z_calc) # valor de Z calculado
print("==============================================================================================================")

if (abs(Z_calc) > abs(qnorm(p=alpha/2))){
  cat("Com um nivel de significancia alpha", alpha, ", ha evidencias para se rejeitar a hipotese nula e, portanto,
  deve-se dizer que existe diferenca entre as duas proporcoes.")
} else {
  cat("Com um nivel de significancia alpha", alpha, ", NAO ha evidencias para se rejeitar a hipotese nula e, portanto,
  deve-se dizer que NAO existe diferenca entre as duas proporcoes.")
}
print("==============================================================================================================")

# Cálculo com Fórmula
teste_ab_prop = prop.test(c(total_compras_a, total_compras_b), c(total_visitas_a, total_visitas_b),
                          alternative = "two.sided", correct = FALSE)
teste_ab_prop
print("==============================================================================================================")

teste_ab_prop$p.value
teste_ab_prop$p.value < alpha
print("==============================================================================================================")

# Teste para Médias de Faturamento
# Consideraremos as seguintes hipóteses:
# H0 : mA = mB | H1 : mA - mB
# H0 : mA =/= mB | H1 : mA =/= mB
# Considerando que as médias dos faturamentos são provenientes de populações com variâncias desconhecidas,
# porém iguais, utilizaremos o Teste T para amostras independentes, com esse tipo de variância.

# Cálculo Manual
n_fat_a = length(fat_A)
n_fat_b = length(fat_B)
media_a = sum(fat_A)/length(fat_A)
media_b = sum(fat_B)/length(fat_B)
sp = sqrt(((n_fat_a-1)*var(fat_A)+(n_fat_b-1)*var(fat_B))/(n_fat_a+n_fat_b-2))
t_calc = (media_a-media_b)/(sp*sqrt((1/n_fat_a)+(1/n_fat_b)))
cat('O valor de T calc: ', t_calc)
print("==============================================================================================================")

if (abs(t_calc) > abs(qt(alpha/2, n_fat_a+n_fat_b-2))){
  cat("Com um nivel de significancia alpha =", alpha, ", ha evidencias para se rejeitar a hipotese nula e, portanto,
  deve-se dizer que existe diferenca entre as duas proporcoes.")
} else {
  cat("Com um nivel de significancia alpha =", alpha, ", NAO ha evidencias para se rejeitar a hipotese nula e, portanto,
  deve-se dizer que NAO existe diferenca entre as duas proporcoes.")
}
print("==============================================================================================================")

# Cálculo com Fórmula
# observação: a fórmula t.test solicita que os dados estejam organizados em duas colunas, uma indicando a categoria
# (no nosso caso a Página A e a Página B) e outra indicando os valores (faturamentos). Criaremos, a partir da função
# data.frame(), um conjunto com esse formato.
dados = data.frame(site = cbind(c(rep("A", 15), rep("B", 15))), faturamento = cbind(c(fat_A, fat_B)))
head(dados)
print("==============================================================================================================")

t.test(faturamento~site, alternative='two.sided', conf.level = (1-alpha), var.equal=TRUE, data=dados)