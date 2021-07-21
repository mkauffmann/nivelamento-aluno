# Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série 
# (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre
#  os números das posições (n/2)-1 e (n/2)
# Ex.:
# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0

def mediana(array)
    array = array.sort()
    n = array.size
    if n % 2 == 0 #par
        return (array[(n / 2 - 1)] + array[(n / 2)]) / 2.0
    else #ímpar
        return array[(n / 2)]
    end
end

# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20])) # deve imprimir 0.0
# puts(mediana([1, 0, 3, 2, 4, 5])) #2.5
# puts(mediana([6, -50, 9, 80, 120, -47, 78])) #9
# puts(mediana([6, -50, 9, 80, 120, -47])) # 7.5
# puts(mediana([0, 0, 0, 1, 0])) #0
# puts(mediana([0, 0, 50, 40])) #20.0