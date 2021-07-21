# Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array,
#  contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo
#      deve ser o maior.
#     Ex.:
#     print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
#     puts


def menor_maior(array)
    for i in (0 .. array.size-1)
        if i == 0
            menor = array[i]
            maior = array[i]
        else
            if array[i] > maior
                maior = array[i]
            elsif array[i] < menor
                menor = array[i]
            end
        end
    end
    return [ menor, maior ]
end

# # testes
# print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
# puts
# print(menor_maior([-1000, 7, 8, 1000, 80, -500])) #[-1000, 1000]
# puts
# print(menor_maior([80, 7, 1, 5, 9, 600])) #[1, 600]
# puts
# print(menor_maior([-2, -1, 0, 0, 1])) #[-2, 1]