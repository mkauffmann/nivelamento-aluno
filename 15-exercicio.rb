OUROS = "\u2666".encode('utf-8')
ESPADAS = "\u2660".encode('utf-8')
COPAS = "\u2665".encode('utf-8')
PAUS = "\u2663".encode('utf-8')
baralho = [
    "A"+OUROS, "A"+ESPADAS, "A"+COPAS, "A"+PAUS,
    "2"+OUROS, "2"+ESPADAS, "2"+COPAS, "2"+PAUS,
    "3"+OUROS, "3"+ESPADAS, "3"+COPAS, "3"+PAUS,
    "4"+OUROS, "4"+ESPADAS, "4"+COPAS, "4"+PAUS,
    "5"+OUROS, "5"+ESPADAS, "5"+COPAS, "5"+PAUS,
    "6"+OUROS, "6"+ESPADAS, "6"+COPAS, "6"+PAUS,
    "7"+OUROS, "7"+ESPADAS, "7"+COPAS, "7"+PAUS,
    "8"+OUROS, "8"+ESPADAS, "8"+COPAS, "8"+PAUS,
    "9"+OUROS, "9"+ESPADAS, "9"+COPAS, "9"+PAUS,
    "10"+OUROS, "10"+ESPADAS, "10"+COPAS, "10"+PAUS,
    "J"+OUROS, "J"+ESPADAS, "J"+COPAS, "J"+PAUS,
    "Q"+OUROS, "Q"+ESPADAS, "Q"+COPAS, "Q"+PAUS,
    "K"+OUROS, "K"+ESPADAS, "K"+COPAS, "K"+PAUS
]
def exibe_array(array)
    for i in (0..array.size-1)
        print(array[i])
        if i < array.size-1
            print(", ")
        end        
    end
    print("\n")
end
def embaralhador(baralho)
    array_embaralhado = []
    array_indices = []

    #gerar um array de indices únicos
    for i in (0 .. baralho.size - 1)
        array_indices[i] = i
    end

    #pegar um índice aleatorio no array
    n = 0
    while n < baralho.size
        f = rand(0 .. array_indices.size - 1)
        if array_indices[f] != nil #se índice não foi usado ainda
            
            array_embaralhado[n] = baralho[array_indices[f]]

            array_indices[f] = nil #inutilizar índice para não repetir cartas
            n = n + 1
        end
    end
    return array_embaralhado
end
puts "Baralho ANTES:"
exibe_array(baralho)
puts baralho.size
puts "Baralho DEPOIS:"
exibe_array(embaralhador(baralho))
puts embaralhador(baralho).size #checar se função perde informações