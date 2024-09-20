so = float(input("Qual sua posição incial(em km): "))
v = float(input("Qual é a sua velocidade constante (em km/h): "))
t = float(input("Qual foi o tempo (em hora): "))

def posicao_final(so, v, t):
    return so + v * t
print("A sua posição final é: ", posicao_final(so, v, t) )