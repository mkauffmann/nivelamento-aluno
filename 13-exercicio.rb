# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros
#  e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado.
#   Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento,
# a função retorna o array inteiro.

def exibe_array(array)
    for i in (0 .. array.size-1)
        print array[i]
        if i < array.size-1
            print ", "
        end
    end
    puts
end

def remove_da_posicao(array, posicao)
    #verificar se posição é igual a último index, fora do limite do array, igual ao primeiro index ou negativa
    if posicao >= array.size - 1 || posicao <= 0
        return array
    else 
        novo_array = []
        for i in (0 .. array.size - 2) #array.size-2 é o tamanho do novo array, com um elemento a menos
            if i < posicao #até a posição alvo, copiar array original
                novo_array[i] = array[i]
            elsif i >= posicao #a partir da posição alvo, copiar próximo valor do array original
                novo_array[i] = array[i + 1]
            end
        end
        return novo_array
    end
end

#teste 1
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 2) #tira C
exibe_array(array_teste)
puts

#teste 2
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 0) #nada acontece
exibe_array(array_teste)
puts

#teste 3
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 5) #nada acontece
exibe_array(array_teste)
puts

#teste 4
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 1) #tira B
exibe_array(array_teste)
puts

#teste 5
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 4) #tira E
exibe_array(array_teste)
puts

#teste 6
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, -1) #nada acontece
exibe_array(array_teste)
puts

#teste 7
array_teste = [ "A", "B", "C", "D", "E", "F" ]
exibe_array(array_teste)
array_teste = remove_da_posicao(array_teste, 50) #nada acontece
exibe_array(array_teste)
puts