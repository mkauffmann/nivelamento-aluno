# Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam a mesma posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.

def multiplica_arrays(arr1, arr2)
    if arr1.size == arr2.size
        multiplicacoes = []

        #salvar multiplicações em um novo array
        for i in (0 .. arr1.size - 1)
            multiplicacoes[i] = arr1[i] * arr2[i]
        end

        #somar valores do array de multiplicações
        soma = 0
        for n in (0 .. multiplicacoes.size - 1)
            soma = soma + multiplicacoes[n]
        end

        return soma
    else 
        return nil
    end
end


#testes
puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
puts multiplica_arrays([1, 2], [5, 6, 7]) == nil #true
puts multiplica_arrays([5, 4, 3], [8, 9, 10]) #106
puts multiplica_arrays([10, 5, 2], [2, 8, 20]) #100