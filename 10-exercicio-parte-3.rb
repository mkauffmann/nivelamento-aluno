# Desenhar uma pirâmide. O tamanho da base deve ser informado. 
# Se o tamanho da base for numero par, o topo terá "**", se for ímpar "*". 
# Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*" que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************

print "Digite o tamanho da base: "
base = gets.chomp.to_i


if base % 2 == 0
    linhas = base / 2
    z = 2
else
    linhas = (base + 1) / 2
    z = 1
end

for x in (1 .. linhas)
    #imprime espaços
    for y in (1..linhas-x)
        print " "
    end

    #imprime *
    for i in (1 .. z)
        print "*"
    end
    puts
    z = z + 2
end