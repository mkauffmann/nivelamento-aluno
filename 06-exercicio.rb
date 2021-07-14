# - FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
# - FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator de transmissão menor que 1.
# - FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de transmissão menor que 1.
# - FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de transmissão menor que 1.
# - FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
# - FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
# Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos) e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.
# Ex.: ao executar o seguinte comando:
# fase_pandemica(0.1, 0.7, 0.5)
# Deve retornar a string "VERDE".
# Obs.: validar os parâmetros, considerando as seguintes regras:
# - taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# - fator de transmissão dever ser um número maior ou igual a zero
# - taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)

def fase_pandemica(vacinacao, transmissao, ocupacaoLeitos)
    # taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
    if  vacinacao < 0 || vacinacao > 1
        return "Dados inválidos de vacinação"

    # fator de transmissão dever ser um número maior ou igual a zero
    elsif  transmissao < 0
        return "Dados inválidos de taxa de transmissão"

    # taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
    elsif  ocupacaoLeitos < 0 || ocupacaoLeitos > 1
        return "Dados inválidos de ocupação de leitos"

    else
        # FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
        if vacinacao > 0.8
            return "AZUL"
        
        # FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, 
        # porém com fator de transmissão menor que 1.
        elsif ocupacaoLeitos <= 0.5 && transmissao < 1
            return "VERDE"

        # FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, 
        # porém com fator de transmissão menor que 1.
        elsif ocupacaoLeitos > 0.5 && ocupacaoLeitos <= 0.65 && transmissao < 1
            return "AMARELA"

        # FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, 
        # porém com fator de transmissão menor que 1.
        elsif ocupacaoLeitos > 0.65 && ocupacaoLeitos <= 0.8 && transmissao < 1
            return "LARANJA"

        # FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% 
        # ou quando o fator de transmissão for maior ou igual a 1.
        elsif ocupacaoLeitos > 0.8 && ocupacaoLeitos <= 0.9 || transmissao >= 1
            return "VERMELHA"

        # FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
        elsif ocupacaoLeitos > 0.9
            return "ROXA"

        end    
    end
end

# (vacinacao, transmissao, ocupacaoLeitos)

# puts fase_pandemica(0.81, 0.7, 0.5) #azul
# puts fase_pandemica(0.1, 0.9, 0.3) #verde 
# puts fase_pandemica(0.1, 0.7, 0.5) #verde 
# puts fase_pandemica(0.5, 0.7, 0.51) #amarela
# puts fase_pandemica(0.7, 0.7, 0.66) #laranja
# puts fase_pandemica(0.7, 1.2, 0.6) #vermelha
# puts fase_pandemica(0.7, 0.9, 0.9) #vermelha
# puts fase_pandemica(0.1, 0.7, 0.91) #roxa
# puts fase_pandemica(0.81, -6.0, 0.5) #erro
# puts fase_pandemica("a", 0.7, 0.5) #erro
# puts fase_pandemica(0.8, 0.7, 5) #erro

puts fase_pandemica(0.1, 0.7, 0.5)   # VERDE
puts fase_pandemica(1.0, 1, 0.9)     # AZUL
puts fase_pandemica(0.1, 1.5, 0.5)   # VERMELHA
puts fase_pandemica(0.1, 0.9, 0.95)  # ROXA
puts fase_pandemica(0.1, 0.9, 0.70)  # LARANJA
puts fase_pandemica(0.1, 0.8, 0.55)  # AMARELA

puts fase_pandemica(-1, 0.7, 0.5)    # deve invalidar Taxa de Vacinacao
puts fase_pandemica(1.1, 0.7, 0.5)   # deve invalidar Taxa de Vacinacao
puts fase_pandemica(0.1, -2, 0.5)    # deve invalidar Fator de Transmissao
puts fase_pandemica(0.1, 0.9, -1)    # deve invalidar Taxa de Ocupacao de Leitos
puts fase_pandemica(0.1, 0.9, 1.2)   # deve invalidar Taxa de Ocupacao de Leitos