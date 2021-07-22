# Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o produto resultante entre eles (a multiplicação de todos os elementos entre si).
# Ex.:
# puts(produto([1, 4, 7]))               # deve imprimir 28
# puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0

def produto(numeros)
    resultado = 1
    for i in (0 .. numeros.size - 1)
        resultado = resultado * numeros[i]
    end
    return resultado
end

#testes
puts(produto([1, 4, 7]))               # deve imprimir 28
puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
puts(produto([1, 2, 3, 4, 5])) #120
puts(produto([2, 2, 2, 2])) #16