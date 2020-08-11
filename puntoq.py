
def factorial(x):
    factorial = 1
    while x > 1:
        factorial *= x
        x -= 1
    return factorial
def coseno(x):
    repeticiones = 99.0
    sume = 1.0
    n = 0.0
    coseno = 0.0
    decimales = 4
    while (n < repeticiones):
        numerador = float((-1) ** n) * (x ** (2 * n))
        denominador = float((factorial(2 * n)))
        sume = float(numerador / denominador)
        n += 1
        if n % 2 == 0:
            coseno += sume
        else:
            coseno -= sume
    cosenofinal = str(round(coseno, decimales))
    return cosenofinal


x = float(input('Digite el angulo sel cos(x) '))

print('La aproximación al coseno de ',x,'es:',coseno(x))