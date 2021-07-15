def eh_primo(numero)
    for n in (2 .. numero - 1)
        if numero % n == 0
            return false
        end
    end
    return true
end

def encontraProximoPrimo(numero)
    n = numero + 1
    until eh_primo(n)
        n = n + 1
    end
    return n
end

def calculaMMC(n1, n2)
    resultado = 1
    if n1 % n2 == 0
        resultado = n1
    elsif n2 % n1 == 0
        resultado = n2
    else
        primo = 2
        while n1 != 1 || n2 != 1
            if n1 % primo == 0 || n2 % primo == 0
                if n1 % primo == 0
                    n1 = n1 / primo
                end
                if n2 % primo == 0
                    n2 = n2 / primo
                end
                resultado = resultado * primo
            else
                primo = encontraProximoPrimo(primo)
            end
        end
    end
    return resultado
end

puts "Programa do MMC"
print "Digite um número inteiro: "
n1 = gets.chomp.to_i

print "Digite outro número inteiro: "
n2 = gets.chomp.to_i

puts "MMC " + n1.to_s + ", " + n2.to_s + " = " + calculaMMC(n1, n2).to_s


# #teste funcao primo
# puts encontraProximoPrimo(20)
# puts encontraProximoPrimo(30)
# puts encontraProximoPrimo(40)
# puts encontraProximoPrimo(50)
# puts encontraProximoPrimo(60)
