# Médias das distâncias percorridas pelos colaboradores de uma empresa.
# Em to_do o momento, consideraremos o nível de significância α = 0,05%.

# GERANDO O CONJUNTO DE DADOS
cargos = c(rep("Jr", 5), rep("PL", 5), rep("SR", 5), rep("CD", 5))
distancias = c(8, 9, 13, 10, 8, 7, 5, 9, 10, 11, 4, 6, 5, 3, 8, 3, 3, 2, 4, 5)
dist_cargo = data.frame(cargos = cargos, distancias = distancias)
head(dist_cargo)
print("==============================================================================================================")

cargo_medias = aggregate(dist_cargo$distancias, list(dist_cargo$cargos), mean)
colnames(cargo_medias) = c("cargo", "media")
barplot(height = cargo_medias$media, names = cargo_medias$cargo,
xlab="Cargos", ylab="Disancia media em KM", main="Distancia media percorrida ate o trabalho por nivel de cargo")


# Modelo de Análise de Variância, que será incorporado no TESTE DE FISHER.
# install.pachages("agricolae") # caso seja preciso instalar o pacote.
library(agricolae)
# Passo 1 - Criar o modelo de Análise de Variância, com Distância em função dos cargos.
modelo_anova <- aov(distancias~cargos, data=dist_cargo)
summary(modelo_anova)
print("==============================================================================================================")

# TESTE DE FISHER para identificar qual ou quais destas médias são diferentes.
teste_F <- LSD.test(modelo_anova, "cargos", p.adj = "bonferroni")
print(teste_F)
plot(teste_F)