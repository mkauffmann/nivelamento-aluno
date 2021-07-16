# Desenhe um quadrado de 10 linhas por 10 colunas. 
# Desenhar as bordas com “*”, preencher com “x”.

for x in (1 .. 10)
    #bordas superiores e inferiores
    if x == 1 || x == 10
        for z in (1..10)
            print "*"
        end
        puts
    else
        #borda esquerda
        print "*"

        #preenchimento
        for y in (1..8)
            print "x"
        end

        #borda direita
        print "*"

        #pula linha
        puts
    end
end