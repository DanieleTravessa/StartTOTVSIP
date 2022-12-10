/*6. Faça uma função para calcular o dobro de um número qualquer. O
programa principal deverá chamar essa função passando um valor
informado pelo usuário e exibir o resultado na tela.*/

FUNCTION MAIN()

LOCAL nNum := 0, nDb := 0

?"***Vamos calcular o dobro de um valor!!!***"
ACCEPT "Insira um numero qualquer: " to nNum

nNum := Val(nNum)

nDb := Dobro(nNum, nDb)

?"O dobro de", nNum, "e", ALLTRIM(STR(nDb)),"."
?""

RETURN NIL

FUNCTION Dobro(nNum, nDb)

nDb := nNum * 2

RETURN nDb
