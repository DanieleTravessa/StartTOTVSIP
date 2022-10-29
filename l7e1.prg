/*1. Fazer um programa que dados um número de 1 até 7, apresente o nome do dia da semana correspondente. 
Considere 1 como “Domingo”. Utilize vetor.*/
FUNCTION MAIN()

    LOCAL aDs := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}, nN, nD 

        ACCEPT "Insira o dia: " to nN
            nN := Val(nN)
            nD := aDs[nN]

    ?"O dia correspondente eh", nD
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""

RETURN NIL
