# Você trabalha no setor de Recursos Humanos de uma empresa e está liderando uma pesquisa que busca compreender
# a relação entre as horas de sono dos beneficiários e o nível de satisfação com o emprego.
# Você deverá proceder a um Teste Qui-quadrado para avaliar se os
# eventos “horas de sono” e “satisfação” são independentes entre si.

# O primeiro passo é a construção do conjunto de dados, que será feita por meio do comando matrix().
faixa_sono = matrix(c(15, 16, 44, 13,
                      8, 9, 14, 7,
                      13, 18, 86, 21), byrow=T, ncol=4)
colnames(faixa_sono) = c("2_a_4", "5_a_6", "7_a_8", "8_ou_mais")
rownames(faixa_sono) = c("satisfeito", "indiferente", "insatisfeito")
faixa_sono

# A partir disso, podemos realizar o teste por meio do comando chisq.test:
chisq.test(faixa_sono, correct = F)

# Dessa forma, temos que, ao nível de significância α = 5%,
# não existem evidências suficientes para rejeitarmos a hipótese nula. Recordando as hipóteses, temos que:
# H0 : variáveis e categorias são independentes (não existe associação)
# H1 : variáveis e categorias não são independentes (existe associação)