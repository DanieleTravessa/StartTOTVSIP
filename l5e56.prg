/*56.Elaborar um programa que exiba na tela automaticamente todos os múltiplos de um determinado número informado pelo usuário, 
existentes entre 1 e um limite, que também deverá ser informado pelo usuário. 
Fazer duas versões da solução utilizando diferentes estruturas de repetição, a sua escolha.  
Utilizar obrigatoriamente o laço finito (para) para esta solução. 
==> Versão: laço finito (para)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nLimite := 0

    Accept "Informe o valor limite: " to nLimite
    Accept "Informe o fator de multiplicacao desejado: " to nMultiplo
    
    nLimite := Val(nLimite)
    nMultiplo := Val(nMultiplo)

    FOR nNumero:= 1 to nLimite ///*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        IF nNumero%(nMultiplo)=0
        ?nNumero          //O programa exibe o valor contido na variável
        ENDIF
    NEXT
    QOUT("-> *** Esses sao os multiplos de", nMultiplo, "ate", +AllTrim(Str(nLimite))," ***")
    ?""

RETURN NIL
