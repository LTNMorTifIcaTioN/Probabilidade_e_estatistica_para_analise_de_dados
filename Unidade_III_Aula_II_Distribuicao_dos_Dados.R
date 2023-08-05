# distribuição Normal: proveniente de variáveis aleatórias contínuas.
# distribuição Exponencial: proveniente de variáveis aleatórias contínuas.
# distribuição Uniforme: proveniente de variáveis aleatórias contínuas.
# distribuição Binomial: proveniente de variáveis aleatórias discretas.

# UNIFORME
set.seed(42) #semente utilizada para gerar valores aleatórios fixos
random.unif <- runif(10000, min = 1, max = 3)
hist(random.unif, freq = FALSE, xlab = 'x', density = 50, main = "Uniforme", ylab = "Densidade")

# EXPONENCIAL
random.exp = rexp(10000, 0.5)
hist(random.exp, freq = FALSE, xlab = 'x', density = 50, main = "Exponencial", ylab = "Densidade")

# NORMAL
random.normal = rnorm(10000, 10.5)
hist(random.normal, freq = FALSE, xlab = 'x', density = 50, main = "Normal", ylab = "Densidade")

#BERNOULLI
# install.packages("Rlab")
# caso já tenha este pacote instalado, não é necessário instalá-lo novamente.
# Caso não o tenha, retire o jogo da velha à esquerda do comando e o execute.
library(Rlab)
random.bern = rbern(10000, 0.6)
hist(random.bern, freq = FALSE, xlab = 'x', density = 50,main = "Bernoulli", ylab = "Densidade")
