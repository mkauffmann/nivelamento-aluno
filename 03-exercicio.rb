# 1. retornar a quantidade de horas que tem em
# uma quantidade de anos, que será um valor informado para a função

def calcularHorasEmAnos(qtdAnos)
    return 24 * 365 * qtdAnos
end    

def imprimirHorasEmAnos(qtd)
    puts qtd.to_s + " anos = " + calcularHorasEmAnos(qtd).to_s + " horas"
end
#testes
imprimirHorasEmAnos(1)
imprimirHorasEmAnos(10)
imprimirHorasEmAnos(20)

# 2. retornar a quantidade de minutos que tem em uma
# quantidade de décadas, que será um valor informado para a função

def calcularMinutosEmDecadas(qtdDecadas)
    return 60 * 24 * 365 * 10 * qtdDecadas
end

def imprimirMinutosEmDecadas(qtd)
    puts qtd.to_s + " décadas = " + calcularMinutosEmDecadas(qtd).to_s + " minutos"
end

#testes
imprimirMinutosEmDecadas(1)
imprimirMinutosEmDecadas(2)
imprimirMinutosEmDecadas(10)

# 3. retornar a idade em valor de segundos, sendo que
# a idade deve ser informada para a função

def calcularIdadeEmSegundos(idade)
    return 60 * 60 * 24 * 365 * idade
end

def imprimirIdadeEmSegundos(qtd)
    puts qtd.to_s + " anos = " + calcularIdadeEmSegundos(qtd).to_s + " segundos"
end
#testes
imprimirIdadeEmSegundos(1)
imprimirIdadeEmSegundos(10)
imprimirIdadeEmSegundos(30)
 

# 4. retornar a quantidade de anos que tem em uma 
#quantidade de segundos, que será um valor informado para a função

def calcularQtdDeAnosEmSegundos(qtdSegundos)
    return qtdSegundos / 365.0 / 24 / 60 / 60
end

def imprimirQtdDeAnosEmSegundos(qtd)
    puts qtd.to_s + " segundos = " + calcularQtdDeAnosEmSegundos(qtd).to_s + " anos"
end

#testes
imprimirQtdDeAnosEmSegundos(946080000)
imprimirQtdDeAnosEmSegundos(315360000)
imprimirQtdDeAnosEmSegundos(1232000000)
imprimirQtdDeAnosEmSegundos(31536000)