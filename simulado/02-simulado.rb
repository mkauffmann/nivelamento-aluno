# Defina uma função chamada “negativos_positivos”, que deve receber um 
# array de números e que deve retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

def negativos_positivos(array)
    #iniciar contadores como float
    pos = 0.0
    zero = 0.0
    neg = 0.0

    for i in (0 .. array.size - 1)
        if array[i] > 0
            pos = pos + 1
        elsif array[i] < 0
            neg = neg + 1
        else
            zero = zero + 1
        end
    end
    return [ (pos / array.size) , (zero / array.size) , (neg / array.size)  ]
end

#testes
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # # deve imprimir o array [0.5, 0.25, 0.25]

# print(negativos_positivos([0, 2, 0, -1, 0, -2, 2, 8, -5])) #[0.33, 0.33, 0.33]
# print("\n")

# print(negativos_positivos([0, 0, 1])) #[0.33, 0.66, 0.0]
# print("\n")

# print(negativos_positivos([-4, -5, -6, -7, 1])) #[0.20, 0.0, 0.8]
# print("\n")

# print(negativos_positivos([0, 0, 0])) #[0.0, 1.0, 0.0]
# print("\n")