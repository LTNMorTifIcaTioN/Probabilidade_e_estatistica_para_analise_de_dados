# EXEMPLO – TESTAGEM DE COLABORADORES DE UMA ORGANIZAÇÃO
PA = 0.4 # probabilidade de o beneficiario não estar com covid-19
PA_c= 0.6 # probabilidade de o beneficiário estar com covid-19
PBA = 0.85 # probabilidade de o teste dar negativo, dando que o beneficiário não está com covid-19
PBA_c = 0.12 # probabilidade de o teste ser negativo, dado que o beneficiário está com covid-19

# TEOREMA DE BAYES
PBayesAB = (PBA*PA) / (PBA*PA+PBA_c*PA_c)
print(PBayesAB)