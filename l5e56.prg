/*56.Elaborar um programa que exiba na tela automaticamente todos os m�ltiplos de um determinado n�mero informado pelo usu�rio, 
existentes entre 1 e um limite, que tamb�m dever� ser informado pelo usu�rio. 
Fazer duas vers�es da solu��o utilizando diferentes estruturas de repeti��o, a sua escolha.  
Utilizar obrigatoriamente o la�o finito (para) para esta solu��o. 
==> Vers�o: la�o finito (para)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nLimite := 0

    Accept "Informe o valor limite: " to nLimite
    Accept "Informe o fator de multiplicacao desejado: " to nMultiplo
    
    nLimite := Val(nLimite)
    nMultiplo := Val(nMultiplo)

    FOR nNumero:= 1 to nLimite ///*No la�o finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        IF nNumero%(nMultiplo)=0
        ?nNumero          //O programa exibe o valor contido na vari�vel
        ENDIF
    NEXT
    QOUT("-> *** Esses sao os multiplos de", nMultiplo, "ate", +AllTrim(Str(nLimite))," ***")
    ?""

RETURN NIL
