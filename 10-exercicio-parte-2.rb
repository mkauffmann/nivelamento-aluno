# Esse aqui é um desafio. Faça um código para obter esse resultado:
#         *
#         **
#         ***
#         ****
#         *****
#         ******
#         *******
#         ********
#         *********
#         **********


for x in (1 .. 10)
    for y in (1..x)
        print "*"
    end
    puts
end