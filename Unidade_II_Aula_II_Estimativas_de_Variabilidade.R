# MEDIDAS DE DISPERSÃO

# Gerando as variáveis
preco = c(5.1, 7.8, 8.1, 6.0, 8.1, 8.0, 8.0, 9.0, 7.1, 9.0)
prazo = c(8.0, 8.0, 7.1, 9.0, 6.0, 6.0, 9.0, 6.0, 6.0, 8.1)
atendimento = c(8.1, 8.1, 5.0, 7.1, 6.1, 9.1, 7.1, 8.0, 9.0, 7.0)
entrega = c(5.1, 8.0, 5.0, 5.1, 7.0, 7.1, 8.1, 8.0, 8.0, 7.0)
pos_venda = c(8.0, 6.1, 6.1, 6.1, 6.1, 6.0, 8.0, 7.0, 5.0, 5.1)

pesquisa = data.frame(preco, prazo, atendimento, entrega, pos_venda)
head(pesquisa)
print("===============================================================================================================")

# Obtendo as amplitudes das variáveis com min() e max()
amp_preco = max(preco) - min(preco)
amp_prazo = max(prazo) - min(prazo)
amp_atendimento = max(atendimento) - min(atendimento)
amp_entrega = max(entrega) - min(entrega)
amp_pos_venda = max(pos_venda) - min(pos_venda)
rbind(amp_preco, amp_prazo, amp_entrega, amp_atendimento, amp_pos_venda)
print("===============================================================================================================")

# Média e Mediana com summary()
summary(pesquisa)
print("===============================================================================================================")

# Desvio médio absoluto por formula
desv_medio_preco = sum(abs(preco-mean(preco)))/length(preco)
desv_medio_prazo = sum(abs(prazo-mean(prazo)))/length(prazo)
desv_medio_atendimento = sum(abs(atendimento-mean(atendimento)))/length(atendimento)
desv_medio_entrega = sum(abs(entrega-mean(entrega)))/length(entrega)
desv_medio_pos = sum(abs(pos_venda-mean(pos_venda)))/length(pos_venda)
rbind(desv_medio_preco, desv_medio_prazo, desv_medio_entrega, desv_medio_atendimento, desv_medio_pos)
print("===============================================================================================================")

# Variâncias e Covariâncias por cov()
cov(pesquisa)