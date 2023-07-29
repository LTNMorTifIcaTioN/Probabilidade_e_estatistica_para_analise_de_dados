# BOXPLOT
# Medidas Baseadas na Distribuição
idades = c(19, 22, 23, 23, 25, 28, 32, 34, 35, 39, 42, 45, 47, 58, 62)

# Obter os  quantis de p=0,4 e p=0,6 com o comando quantile()
print(c(quantile(idades, p=0.4), quantile(idades, p=0.6)))
print("===============================================================================================================")

# Obter os quartis do conjunto de dados com summary()
summary(idades)
print("===============================================================================================================")

# Gráficos com o comando boxplot()
boxplot(idades, ylim=c(18,62), main="Boxplot das idades dos beneficiarios", ylab="Idade")
points(mean(idades), pch=5)

# Boxplot por ggplot2:
library(ggplot2)
dados = as.data.frame(idades)
ggplot(aes(x="", y=idades), data=dados) + geom_boxplot() + labs (x = "",
                                                                 y = "Idade",
                                                                 title = "Boxplot das idades dos beneficiario - ggplot2"
)