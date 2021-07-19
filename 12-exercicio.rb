# Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer
#  e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo,
#   de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
# Se a posição alvo não estiver no limite do array, a função deve retornar false.


def exibe_array(array)
    for i in (0 .. array.size-1)
        print array[i]
        if i < array.size-1
            print ", "
        end
    end
    puts
end

def insere_no_array(array, valor, posicao)
    if posicao < array.size
        n = array.size
        while n > posicao
            array[n] = array[n - 1]
            n = n - 1
        end
        array[posicao] = valor
        return true
    else 
        return false
    end
end

#teste 1
array_teste = [ "A", "B", "C", "D", "E", "F", "G" ]
exibe_array(array_teste)
puts insere_no_array(array_teste, "Z", 3) #true
exibe_array(array_teste)
puts

#teste 2
array_teste = [ "A", "B", "C", "D", "E", "F", "G" ]
exibe_array(array_teste)
puts insere_no_array(array_teste, "Z", 10) #false
exibe_array(array_teste)
puts

#teste 3
array_teste = [ "A", "B", "C", "D", "E", "F", "G" ]
exibe_array(array_teste)
puts insere_no_array(array_teste, "Z", 6) #true
exibe_array(array_teste)
puts

#teste 4
array_teste = [ "A", "B", "C", "D", "E", "F", "G" ]
exibe_array(array_teste)
puts insere_no_array(array_teste, "Z", 7) #false
exibe_array(array_teste)
puts

#teste 5
array_teste = [ "A", "B", "C", "D", "E", "F", "G" ]
exibe_array(array_teste)
puts insere_no_array(array_teste, "Z", 0) #true
exibe_array(array_teste)
puts