/*4. Lembra do exercício da troca de valores entre 2 variáveis?
Implementar um programa que leia 2 valores informados pelo usuário
e através de um procedimento chamado “troca”, realize a troca dos
valores entre as duas variáveis.*/

FUNCTION MAIN()

LOCAL nPREST := 0, nValor := 0, nTaxa := 0, nTempo := 0

local nN1:=0, nN2:=0

    ACCEPT("Informe o primeiro valor: ") to nN1
    ACCEPT("Informe o segundo valor: ") to nN2

    Troca(nN1, nN2)

RETURN NIL

PROCEDURE Troca(nN1, nN2)

    LOCAL nAux:=0

    Qout()
    nAux := nAux+Val(nN1)
    nN1 := Val(nN2)
    nN2 := nAux
    ?"Agora vou trocar!!!!"
    ?"O primeiro valor vale:", Alltrim(STR(nN1)), "e o segundo valor vale:", Alltrim(STR(nN2))
    ?""
RETURN

