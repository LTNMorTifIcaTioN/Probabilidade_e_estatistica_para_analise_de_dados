# BARPLOTS E HSTOGRAMAS

# Exemplo 1
# Criando as variáveis Setor e Total de Funcionários
setor = c('RH', 'Financas', 'Servicos', 'Dados', 'Outras') # o comando c() cria um vetor de dados
total_funcionarios = c(6,12,20,7,6)
funcionarios_por_setor = data.frame(setor, total_funcionarios) # cria um data frame com duas variáveis
head(funcionarios_por_setor)

# Grafico de Barras Simples
barplot(funcionarios_por_setor$total_funcionarios, main = "Grafico de Barras do Numero de Funcionarios por Setor",
        ylab = "Frequencia",
        names.arg = funcionarios_por_setor$setor, cex.axis=0.6, cex.names=0.7, cex.main=0.7, cex.lab=0.8, las=2)
# Dentro do comando barplot temos aluns itens parametrizáveis, como o titulo do gráfico (main), o nome das variáveis no
# eixo x (nemes.arg), o nome dos eixos (ylab e xlab) e o tamanho das fontes (cex).
print('==========================================================================================================')

# Exemplo 2
# Gerando uma amostra aleatória do tempo de trajeto até o trabalho
set.seed(42) # comandi utilizado para fixar uma semente, o que permitirá criar um mesmo conjunto ao rodar um
# código de geração de amostra aleatória como rnorm, runif, repois, rbin.
tempo_ate_trabalho= sample(runif(100, 15, 110),46, replace=F) # utilizamos o sample() para
# aleatorizar uma amostra populacional. O runif foi utilizado para criar um conjunto de daods aleatórios,
# seguindo uma distribuição uniforme, com 100 observações e amplitude de 15 minutos a 110 minutos.
head(tempo_ate_trabalho)

# Histograma simples
hist(tempo_ate_trabalho, xlab = "Tempo em minutos", ylab = "Frequencia",
     main = "Histograma do Tempo de Trajeto ate o Trabalho", cex.axis = 0.6,
     cex.main=0.7, cex.lab=0.8, las=2, col = "grey"
     )
print('==========================================================================================================')

# SERIE TEMPORAL (OU SÉRIE ESTATÍSTICA)
# Exemplo 3
# Criando uma série temporal de consumo de energia
consumo = c(8050, 8105, 7893, 7924, 7345, 7047, 6813, 7050, 7134, 7602, 7759, 7821, 7756, 7719,
            8010, 8125, 7833, 7944, 7355, 7067, 6873, 7080, 7194, 7612, 7729, 7831, 7746, 7759,
            8950, 8805, 7793, 7624, 7545, 7447, 6313, 7250, 7134, 7002, 7959, 7821, 7756, 7619,
            8051, 8102, 3893, 4924, 5345, 6047, 7813, 8050, 9134, 7600, 7751, 7822, 7753, 7714)
consumo_mes = ts(consumo, frequency = 12, start = c(2015, 1)) # o comando ts() cria uma série temporal (time series).
# em 'frequency', apresentamos a peridiocidade da série em questão. Como estamos diante de valores mensais, a frequência
# é 12. Caso os valores fossem semestrais, a frequência seria 2, e assim por diante. Em 'star', colocamos o mês de
# início da nossa série, indicando com c(ano, mes)
consumo_mes

# Gráfico da evolução do consumo ao longo do período
plot(consumo_mes, type = "b", main = "Evolucao do consumo de energia eletrica do setor comerciario no Brasil
                                      (2015 - 2019). Fonte: IPEADATA",
     ylab = "Consumo em GWh", xlab = "", col = "blue", lwd = 2)

# Gráfico do consumo acumulado no período
# Soma acumulada
consumo_acumulado = ts(cumsum(consumo), frequency = 12, start = c(2015, 1))
plot(consumo_acumulado)