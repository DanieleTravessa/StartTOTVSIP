/*9. Escreva um algoritmo para mostrar o sucessor e o antecessor de um
n�mero qualquer informado pelo usu�rio. Tanto o antecessor como o
sucessor dever�o ser obtidos atrav�s de fun��es respectivas.*/

FUNCTION MAIN()

LOCAL nNum := 0, nAnt := 0, nSuc := 0

ACCEPT "Informe um numero qualquer: " to nNum

nNum := Val(nNum)
nAnt := Antecessor(nNum, nAnt)
nSuc := Sucessor(nNum, nSuc)

?"O numero", ALLTRIM(STR(nNum)), "tem", ALLTRIM(STR(nAnt)), "como antecessor e", ALLTRIM(STR(nSuc)), "como sucessor."
?""

RETURN NIL

FUNCTION Antecessor(nNum, nAnt)
    
    nAnt := nNum - 1

Return nAnt

FUNCTION SUCESSOR(nNum, nSuc)
    
    nSuc := nNum + 1

RETURN nSuc
