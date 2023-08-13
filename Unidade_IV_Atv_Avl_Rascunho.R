alpha = 0.05

z_critico = qnorm(1-alpha/2, mean = 0, sd = 1)
print(z_critico)

# Agora iremos obter o valor de p^ estimado
p_est = ((4)+(7))/(40+45)
z_calc = ((4/40)-(7/45))/(sqrt((p_est*(1-p_est)/40)+(p_est*(1-p_est)/45)))
print(z_calc)
print(z_calc > p_est)