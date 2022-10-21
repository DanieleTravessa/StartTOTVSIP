/*57.Elaborar um programa que gere, automaticamente, valores aleatórios, 
entre 0 e 99 e exiba na tela apenas àqueles que são múltiplos de um número informado pelo usuário. 
A quantidade de valores a serem gerados, também deve ser informado pelo usuário. 
Fazer duas versões da solução utilizando diferentes estruturas de repetição, a sua escolha. 
==> Versão: laço pré-teste (enquanto)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nCont := 0

    Accept "Informe quantos valores quer calcular: " to nCont
    Accept "Informe o fator de multiplicacao desejado: " to nMultiplo
    
    nCont := Val(nCont)
    nMultiplo := Val(nMultiplo)
    nNumero := Hb_RandomInt(0,99)

    WHILE nCont > 0  
        IF nNumero%(nMultiplo)=0
        nNumero += nMultiplo
        ?nNumero       //O programa exibe o valor contido na variável
        nCont--
        ENDIF
    ENDDO
    QOUT("-> *** Esses sao os multiplos de", nMultiplo, "ate", +AllTrim(Str(nCont))," ***")
    ?""

RETURN NIL
