# Para tanto, iniciaremos com o cálculo do intervalo de confiança para uma proporção,
# seguido do intervalo de confiança para uma média e finalizaremos com um teste qui-quadrado para independência.
# Para fins de cálculo, considere o nível de significância α = 0,05 em todos os exemplos

# INTERVALO DE CONFIANÇA PARA UMA PROPORÇÃO
# Uma amostra de 100 viagens de transporte por aplicativo, 72 apresentam avaliações com cinco estrelas.
# Com base nestas informações, iremos encontrar o intervalo de confiança para a proporção p.

# Primeiro passo: encontrar o valor crítico de Z. COmo trabalharemos com alpha = 5%, definiremos o valor de antemão.
alpha = 0.05
n = 100
# o valor critico de Z é obtido por meio da função qnorm, ao passo que se trata de uma distribuição normal.
# Como estamos trabalhando com o intervalo de confiança, utilizamos o valor de [alpha/2].
z_critico = qnorm(1-alpha/2, mean = 0, sd = 1)
print(z_critico)

# Agora iremos obter o valor de p^ estimado
p_est = 72/100
LI = (p_est - z_critico*sqrt((p_est*(1-p_est))/n))
LS = (p_est + z_critico*sqrt((p_est*(1-p_est))/n))
print(c(LI, LS))
print("===============================================================================================================")


# Uma empresa está avaliando o tempo médio gasto pelos funcionários para chegarem ao trabalho diariamente.
# Em uma amostra com 50 colaboradore, foram obtidos os seguintes dados
# (28, 31, 36, 31, 34, 23, 24, 33, 30, 37, 32, 28, 26, 30, 37, 29, 27, 33, 28, 37, 31, 33, 23, 41, 34, 26, 28, 32, 28,
# 32, 33, 29, 26, 22, 26, 32, 28, 35, 29, 27, 20, 28, 31, 33, 29, 31, 32, 30, 32, 32).
# Considerando que a variância é desconhecida, calcule o intervalo de confiança para a média do tempo de deslocamento
# gasto até o trabalho. Lembrete: para média de uma amostra, com variância populacional desconhecida,
# utilizamos a Tabela T para realizar os testes.

# Primeiro passo: gerar o conjunto de dados a partir da amostra informada.
tempo = c(28, 31, 36, 31, 34, 23, 24, 33, 30, 37, 32, 28, 26, 30, 37, 29, 27, 33, 28, 37, 31, 33, 23, 41, 34, 26, 28,
          32, 28, 32, 33, 29, 26, 22, 26, 32, 28, 35, 29, 27, 20, 28, 31, 33, 29, 31, 32, 30, 32, 32)
n = length(tempo)
alpha = 0.05

# O valor crítico de T é obtido por meio da função qt. Como estamos trabalhando com o intervalo de confiança,
# utilizamos o valor de alpha/2
t_critico = qt(1-alpha/2, df = n-1)
print(t_critico)

# Aplicando a fórmula, já conseguimos obter o intervalo de confiança:
LI = (mean(tempo) - t_critico*sd(tempo)/sqrt(n))
LS = (mean(tempo) + t_critico*sd(tempo)/sqrt(n))
print(c(LI, LS))

# Também podemos confirmar os resultados obtidos por meio do seguinte comando:
t.test(tempo, conf.level = 1-alpha)
print("===============================================================================================================")


# TESTE QUI-QUADRADO PARA INDEPENDÊNCIA
# Suponha que uma agência de viagens esteja avaliando a satisfação de seus clientes, considerando, para tanto,
# três destinos diferentes: Marrocos, Porto Rico e Itália.
# De modo geral, a ideia é avaliar se existe alguma associação entre o destino escolhido
# e o nível de satisfação dos clientes, estratificado em “Satisfeito” e “Insatisfeito”.
# A partir dos dados obtidos, iremos avaliar se existe independência entre a satisfação e o local de destino,
# considerando um teste Qui-quadrado.

# Criando a tabela de dados (tabela de contingência).
pesquisa = matrix(c(130, 87, 155,
                    20, 13, 15), byrow = T, ncol=3)

# Adicionando nomes das colunas e das linhas
colnames(pesquisa) = c("Marrocos", "Porto_Rico", "Italia")
rownames(pesquisa) = c("SATISFEITO", "INSATISFEITO")
print(pesquisa)
# Rodando o teste qui-quadrado (hipótese nula de que satisfação e países são independentes)
chisq.test(pesquisa, correct = F)

# Com base no p-valor do teste, não há elementos suficientes para rejeitarmos H0, ou seja,
# para dizermos que o destino da viagem e a satisfação do cliente estão associadas.