
#  f (x) = e ^ 0.6

import math


def aproximacionTaylor():
    real = math.e ** 0, 6
    t = 0.0
    grado = int(input("Digite el grado del polinomio de Taylor."))

    x = 0

    for i in range(grado):
     t = t + (((math.e ** x) * (0,6 ** i)) / math.factorial(i))
    round (t,4)
    round(real,4)
print("El resultado aproximado es igual a:|>")
print("El resultado real es igual a:")




if __name__ == "__main__":
    aproximacionTaylor()
