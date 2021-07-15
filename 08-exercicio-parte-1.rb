def imprimeTabuada(numero)
    puts "Tabuada do " + numero.to_s
    for n in (1 .. 10)
        puts numero.to_s + " X " + n.to_s + " = " + (n * numero).to_s
    end 
end

puts "Programa da Tabuada"
print "Digite um número inteiro: "
numero = gets.chomp.to_i
imprimeTabuada(numero)