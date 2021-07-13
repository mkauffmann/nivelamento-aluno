# Escreva um programa que pergunte o nome e a idade do usuário. 
# Escreva também uma função que calcula a quantidade de batimentos 
# cardíacos (uma estimativa) baseado na quantidade de dias que o usuário
#  viveu. Considere uma média de 80 batimentos por minuto.
#  Essa função deve receber a idade do usuário como parâmetro.

def recebeNomeUsuario()
    print "Digite seu nome: "
    nome = gets.chomp
    return nome
end

def recebeIdadeUsuario()
    print "Digite sua idade: "
    idade = gets.to_i
    return idade
end

def calculaBatimentosPorIdade(idade)
    anosEmMinutos = 365 * 24 * 60
    mediaBatimentos = 80
    return idade * anosEmMinutos * mediaBatimentos
end

nome = recebeNomeUsuario()
idade = recebeIdadeUsuario()
puts nome +", seu coração já bateu aproximadamente " + calculaBatimentosPorIdade(idade).to_s + " vezes."