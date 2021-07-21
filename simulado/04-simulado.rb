# Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro
#  como parâmetro e deve imprimir na tela uma tabela de números seguindo a 
#  seguinte regra:
# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n
# Valide se o parâmetro é um número maior que zero, se não for, a função deve imprimir
#  na tela "ARGUMENTO INVÁLIDO"
# imprimir_tabela(5) # deve ser impresso na tela a seguinte tabela:
#  1
#  2 4
#  3 6 9
#  4 8 12 16
#  5 10 15 20 25
# imprimir_tabela(0) # deve ser impresso na tela: 
# ARGUMENTO INVÁLIDO

def imprimir_tabela(n)
    if n > 0
        for linhas in (1 .. n)
            for colunas in (1 .. linhas)
                print linhas * colunas
                print " "
            end
            puts
        end
    else
        puts "ARGUMENTO INVÁLIDO"
    end
end

#testes
# imprimir_tabela(5)
# imprimir_tabela(0) #inválido
# imprimir_tabela(-1) #inválido
# imprimir_tabela(6)
# imprimir_tabela(20)