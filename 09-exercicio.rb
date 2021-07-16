def adivinhaNumero(numero, chute)
    if numero == chute
        puts "Acertou!"
        return true
    elsif numero > chute
        puts "Errou!"
        print "Tente um número mais alto: "
        return false
    elsif numero < chute
        puts "Errou!"
        print "Tente um número mais baixo: "
        return false
    end
end

def validaChute(chute)
    if chute.to_i != 0 && !chute.include?(".")
        if chute.to_i >= 0 && chute.to_i <= 100
            #chute válido
            return true
        else
            puts "Chute inválido!"
            print "Tente novamente: "
            return false
        end
    else
        if chute == 0.to_s 
            #usuário chutou 0, chute válido
            return true
        else
            #usuario chutou algo que função to_i converteu para 0
            puts "Chute inválido!"
            print "Tente novamente: "
            return false
        end
    end
end

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"


acertou = false
contador = 0
until acertou
    chute = gets.chomp
    if validaChute(chute)
        contador = contador + 1
        acertou = adivinhaNumero(numero, chute.to_i)
    end
end
puts "Tentativas válidas: " + contador.to_s
