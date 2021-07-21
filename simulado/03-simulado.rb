# Escreva uma função chamada "calcula_media" que deve receber um array
#  de números como parâmetro e deve retornar o valor da média aritmética
#   entre todos os números do array.
#     puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0

def calcula_media(array)
    soma = 0.0
    for i in (0 .. array.size - 1)
        soma = soma + array[i]
    end
    return soma / array.size
end

#testes
# puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
# puts(calcula_media([10, 5, -10, 0, 5]))  #2.0 
# puts(calcula_media([3, 5, 9])) #5.666
# puts(calcula_media([-3, -5, -9, 20])) #0.75