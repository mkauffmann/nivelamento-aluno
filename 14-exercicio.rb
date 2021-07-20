def encontrar_no_array(array, valor)
    for i in (0 .. array.size - 1)
        if valor == array[i]
            return i
        end
    end
    return -1
end

def sortear_numeros(qtd, limite_inicio, limite_fim)
    numeros = []
    i = 0 
    while i < qtd
        sorteado = rand(limite_inicio .. limite_fim)
        if encontrar_no_array(numeros, sorteado) == -1
            numeros[i] = sorteado
            i = i + 1
        end
    end
    return numeros
end
def obter_apostas(qtd, limite_inicio, limite_fim)
    return sortear_numeros(qtd, limite_inicio, limite_fim)
end
def verificar_acertos(sorteados, apostados)
    acertos = 0
    numeros_acertados = []
    for i in (0 .. apostados.size - 1)
        if encontrar_no_array(sorteados, apostados[i]) != -1
            numeros_acertados[acertos] = apostados[i]
            acertos = acertos + 1
        end
    end
    return numeros_acertados
end
def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end
mega_sena()