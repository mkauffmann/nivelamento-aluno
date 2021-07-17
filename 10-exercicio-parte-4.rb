# Tente fazer uma letra V, usando asteriscos “*” e
# underscores "_".
# _***************_
# *_*************_*
# **_***********_**
# ***_*********_***
# ****_*******_****
# *****_*****_*****
# ******_***_******
# *******_*_*******
# ********_********


linhas = 9
colunas = 17

piramide1 = 0 #controla prints das extremidades
piramide2 = colunas - 2 #controla prints internos
for x in (1 .. linhas)
    while piramide1 <= colunas/2
        for y in (1 .. piramide1)
            print "*"
        end
        print "_"
        for i in (1 .. piramide2)
            print "*"
        end
        if piramide2 >= 0
            print "_"
        end
        for l in (1 .. piramide1)
            print "*"
        end
        piramide1 = piramide1 + 1
        piramide2 = piramide2 - 2
        puts
    end
end

