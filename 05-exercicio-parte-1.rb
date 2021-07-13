# Considere os métodos (as funções) escritos nos exercícios anteriores:
# Os métodos que calculam:
# - o diâmetro de um círculo é 2x o seu raio
# - o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# - a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva um programa que use esses métodos, porém, 
# de tal forma que o valor do raio do círculo seja perguntado ao usuário.

def calculaDiametro(raio)
    return raio * 2
end

def calculaComprimento(raio)
    return calculaDiametro(raio) * Math::PI
end

def calculaArea(raio)
    return raio ** 2 * Math::PI
end

def imprimeResultado(raio)
    puts "Raio: " + raio.to_s + "\nDiâmetro: " + calculaDiametro(raio).to_s +
    " / Comprimento: " + calculaComprimento(raio).truncate(2).to_s + " / Área: " + calculaArea(raio).truncate(2).to_s
end

def recebeDadosUsuario()
    print "Digite o valor do raio: "
    raio = gets.to_f
    return raio
end

raio = recebeDadosUsuario()
imprimeResultado(raio)