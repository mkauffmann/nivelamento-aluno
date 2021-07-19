# Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer
#  como parâmetros e que deve retornar a posição da primeira ocorrência do valor no array. 
# Se o valor não existir no array, retornar -1.


def posicao_no_array(array, elemento)
    for n in (0 .. array.size-1)
        if array[n] == elemento
            return n
        end
    end
    return -1
end

#testes
array_teste = [ 8, 0, 3, 5, 7, 8, 14, "maria" ]

puts posicao_no_array(array_teste, 7) #4
puts posicao_no_array(array_teste, 6) #-1
puts posicao_no_array(array_teste, "ABC") #-1
puts posicao_no_array(array_teste, "maria") #7
puts posicao_no_array(array_teste, "Maria") #-1
puts posicao_no_array(array_teste, 8) #0
puts posicao_no_array(array_teste, 14) #6

