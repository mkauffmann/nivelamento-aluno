# 1. retornar a quantidade de horas que tem em
# uma quantidade de anos, que será um valor informado para a função

def calcularHorasEmAnos(qtdAnos)
    return 24 * 365 * qtdAnos
end    

#testes
puts "1 ano = " + calcularHorasEmAnos(1).to_s + " horas"
puts "10 anos = " + calcularHorasEmAnos(10).to_s + " horas"
puts "20 anos = " + calcularHorasEmAnos(20).to_s + " horas"

# 2. retornar a quantidade de minutos que tem em uma
# quantidade de décadas, que será um valor informado para a função

def calcularMinutosEmDecadas(qtdDecadas)
    return 60 * 24 * 365 * 10 * qtdDecadas
end

#testes
puts "1 década = " + calcularMinutosEmDecadas(1).to_s + " minutos"
puts "2 décadas = " + calcularMinutosEmDecadas(2).to_s + " minutos"
puts "10 décadas = " + calcularMinutosEmDecadas(10).to_s + " minutos"

# 3. retornar a idade em valor de segundos, sendo que
# a idade deve ser informada para a função

def calcularIdadeEmSegundos(idade)
    return 60 * 60 * 24 * 365 * idade
end

#testes
puts "1 ano = " + calcularIdadeEmSegundos(1).to_s + " segundos"
puts "10 anos = " + calcularIdadeEmSegundos(10).to_s + " segundos"
puts "30 anos = " + calcularIdadeEmSegundos(30).to_s + " segundos"
 

# 4. retornar a quantidade de anos que tem em uma 
#quantidade de segundos, que será um valor informado para a função

def calcularQtdDeAnosEmSegundos(qtdSegundos)
    return qtdSegundos / 365.0 / 24 / 60 / 60
end

#testes
puts "946080000 segundos = " + calcularQtdDeAnosEmSegundos(946080000).to_s + " anos"
puts "315360000 segundos = " + calcularQtdDeAnosEmSegundos(315360000).to_s + " anos"
puts "1232000000 segundos = " + calcularQtdDeAnosEmSegundos(1232000000).to_s + " anos"