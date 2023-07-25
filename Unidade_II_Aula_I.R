# MEDIDAS DE LOCALIZAÇÃO #
# Gerando a Tabela de Dados #
library(modeest)
lojas = c("Loja A", "Loja B", "Loja C", "Loja D", "Loja E", "Loja F", "Loja G", "Loja H")
algodao_fio24.1 = c(130, 145, 122, 130, 175, 137, 124, 133)
poliester_comum = c(125, 112, 84, 126, 144, 108, 119, 139)
poliester_uv = c(75, 85, 85, 85, 72, 86, 91, 72)
total = algodao_fio24.1 + poliester_comum + poliester_uv

dados = data.frame(lojas, algodao_fio24.1, poliester_comum, poliester_uv, total) # transformando os vetores em tabela
head(dados)
print("=============================================================================================================")

# Malha de Algodão (Fio 24.1)
media_alg24.1 = mean(dados$algodao_fio24.1) # média
mediana_alg24.1 = median(dados$algodao_fio24.1) # mediana
moda_alg24.1 = mfv(dados$algodao_fio24.1) # moda
print(rbind(media_alg24.1, mediana_alg24.1, moda_alg24.1))
print("=============================================================================================================")

# Malha Poliéster Comum
media_poli_comum = mean(dados$poliester_comum)
mediana_poli_comum = median(dados$poliester_comum)
moda_poli_comum = NA
print(rbind(media_poli_comum, mediana_poli_comum, moda_poli_comum))
print("=============================================================================================================")

# Malha poliéster proteção UV
media_poli_uv = mean(dados$poliester_uv)
mediana_poli_uv = median(dados$poliester_uv)
moda_poli_uv = mfv(dados$poliester_uv)
print(rbind(media_poli_uv, mediana_poli_uv, moda_poli_uv))
print("=============================================================================================================")

# Resumo
tabela_resumo = data.frame('Medida'=c('Média', 'Mediana', 'Moda'),
'Malha Algodão (Fio 24.1)'=c(media_alg24.1,mediana_alg24.1,moda_alg24.1),
'Malha Poliéster Comum'=c(media_poli_comum,mediana_poli_comum,moda_poli_comum),
'Malha Poliéster Proteção UV'=c(media_poli_uv,mediana_poli_uv,moda_poli_uv))
print(tabela_resumo)