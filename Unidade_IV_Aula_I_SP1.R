# Teste t de Student para amostras independentes e variâncias iguais
# H0 : mA = mB | H1 : mA =/= mB
fat_pag_A = c(758.6, 849.2, 1046.3, 677.4, 834.9, 678.8, 685.2, 793, 763.9, 978.5)
fat_pag_B = c(943.1, 1215, 1321.4, 995.7, 1141.5, 1337.1, 933.4, 1080.3, 1029.8, 1186.3)
A = rep("A",10)
B = rep("B", 10)
alpha = 0.05
dados = data.frame(site = cbind(c(A, B)), faturamento = cbind(c(fat_pag_A, fat_pag_B)))
head(dados)
print("==============================================================================================================")

t.test(faturamento~site, alternative='two.sided', conf.level = (1-alpha), var.equal=TRUE, data=dados)