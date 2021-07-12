# 1) O diâmetro de um círculo é 2x o seu raio.
# 2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# 3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva funcões para calcular o diâmetro, o comprimento e a área de um círculo com base no valor do seu raio.

def calcularDiametro(raio)
    return 2 * raio
end

def calcularComprimento(raio)
    return calcularDiametro(raio) * Math::PI
end

def calcularArea(raio)
    return raio ** 2 * Math::PI
end

def imprimirResultado(raio)
    puts "Raio: " + raio.to_s + " / Diâmetro: " + calcularDiametro(raio).to_s + 
    " / Comprimento: " + calcularComprimento(raio).to_s + " / Área: " + calcularArea(raio).to_s
end

imprimirResultado(2)
imprimirResultado(20)
imprimirResultado(4)
imprimirResultado(40)