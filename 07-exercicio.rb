# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

def adivinhaNumero(numero, chute)
    if numero == chute
        puts "Acertou!"
    else
        puts "Errou!"
    end
end

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute = gets.chomp

if chute.to_i != 0 && !chute.include?(".")
    if chute.to_i >= 0 && chute.to_i <= 100
        #chute válido
        chute = chute.to_i
        adivinhaNumero(numero, chute) 
    else
        puts "Chute inválido! (fora do intervalo entre 0 e 100)"
    end
else
    if chute == 0.to_s 
        #usuário chutou 0, chute válido
        chute = chute.to_i
        adivinhaNumero(numero, chute)
    else
        #usuario chutou algo que função to_i converteu para 0
        puts "Chute inválido! (não é número inteiro)"
    end
end


