# TEOREMA DO LIMITE CENTRAL
# Criamos um novo conjunto de dados, desta vez por meio de uma distribuição Binomial, expressamente discreta.
# Foram geradas 10.000 observações de uma distribuição inominal com parâmetros n=20, e p=0,03:
set.seed(42) # semente para gerar o mesmo conjunto aleatório de dados
dados_binom <- rbinom(10000, 20, 0.03)
hist(dados_binom, freq=TRUE, col="grey", xlab="Valores de X",
     main="Histograma dos valores simulados - Distribuicao Binomial", ylab="Frequencia")
amostras1000_binomial <- list()
  for(i in 1:1000){
    amostras1000_binomial[[i]]<-sample(dados_binom, 100, replace=TRUE)
  } # criando 1000 conjuntos amostrais de 30 observações cada.
hist(sapply(amostras1000_binomial, mean),
     main = "Histograma das medias amostrais de uma distribuicao binomial(1000 amostras, n=200",
     ylab="Frequencia", xlab="Medias Amostrais", cex.main=0.8, col="grey")


# DISTRIBUIÇÕES DE DADOS
# Distribuições discretas
library(Rlab)
par(mfrow=c(1,2)) # Plotar histogramas lado a lado.
# Distribuição Bernoulli
set.seed(42)
# simulando dados para p=0,9
hist(rbern(10000, 0.9), main = "Histograma - Distribuicao Bernoulli (p=0,9)", ylab = "Frequencia",
     xlab = "Valor da Observacao", col="lightblue", cex.main=0.7)
# simulando dados para p=0,4
hist(rbern(10000, 0.4), main = "Histograma - Distribuicao Bernoulli (p=0,4)", ylab = "Frequencia",
     xlab = "Valor da Observacao", col="lightblue", cex.main=0.7)

# Distribuição de Poisson
par(mfrow=c(1,2)) # Plotar histogramas lado a lado.
# Distribuição Poisson
set.seed(42)
# simulando dados para p=0,4
hist(rpois(10000, 0.4), main = expression(paste("Histograma - Distribuicao de Poisson(",lambda, "=0,4")),
     ylab = "Frequencia", xlab = "Valor da Observacao", col="lightcoral", cex.main=0.7)
# simulando dados para p=0,8
hist(rpois(10000, 0.8), main = expression(paste("Histograma - Distribuicao de Poisson(",lambda, "=0,8")),
     ylab = "Frequencia", xlab = "Valor da Observacao", col="lightcoral", cex.main=0.7)


# DISTRIBUIÇÕES CONTÍNUAS
# Normal
set.seed(42)
par(mfrow=c(1,2))
hist(rnorm(10000, 0, 5), main=expression(paste("Histograma - Distribuicao Normal(", mu, "=0, ", sigma, "=5")),
     ylab = "Frequencia", xlab = "Valor da Observacao", col = "lightyellow", cex.main=0.7)
# Alterando o desvio padrão para 15, os valores se tornam mais dispersos
hist(rnorm(10000, 0, 15), main=expression(paste("Histograma - Distribuicao Normal(", mu, "=0, ", sigma, "=15")),
     ylab = "Frequencia", xlab = "Valor da Observacao", col = "lightyellow", cex.main=0.7)

# DISTRIBUIÇÃO UNIFORME
set.seed(42)
par(mfrow=c(1,2))
hist(runif(10000, 5, 15), main="Histograma - Distribuicao Normal(n=10000, min=5, max=15)",
     ylab = "Frequencia", xlab = "Valor da Observacao", col = "lightgreen", cex.main=0.6)
# Alterando o valor máximo para 25
hist(runif(10000, 5, 25), main="Histograma - Distribuicao Normal(n=10000, min=5, max=25)",
     ylab = "Frequencia", xlab = "Valor da Observacao", col = "lightgreen", cex.main=0.6)
# Alterando o valor de n para 15
set.seed(42)
hist(runif(15, 5, 15), main="Histograma - Distribuicao Normal(n=15, min=5, max=15)",
     ylab = "Frequencia", xlab = "Valor da Observacao", col = "lightgreen", cex.main=0.6)