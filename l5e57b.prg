/*57.Elaborar um programa que gere, automaticamente, valores aleatórios, 
entre 0 e 99 e exiba na tela apenas àqueles que são múltiplos de um número informado pelo usuário. 
A quantidade de valores a serem gerados, também deve ser informado pelo usuário. 
Fazer duas versões da solução utilizando diferentes estruturas de repetição, a sua escolha. 
==> Versão: laço finito (Para)*/

FUNCTION MAIN()

    Local nNumero := 0, nMultiplo := 0, nCont := 0, nFator := 0, nLimite := 0

    Accept "Informe quantos valores quer calcular: " to nLimite
    Accept "Informe o fator de multiplicacao desejado: " to nFator
    
    nLimite := Val(nLimite)
    nFator := Val(nFator)
    nNumero := Hb_RandomInt(0,99)

    For nCont := 1 to nLimite ///*No laço finito, a estrutura e a variavel com contador se iniciam simultaneamente.
        nMultiplo = nNumero*nFator
        nNumero += nFator
        ?nNumero    //O programa exibe o valor contido na variável
    NEXT
    
    QOUT("-> *** Esses sao ", +AllTrim(Str(nLimite)), "multiplos de", nFator, " ***")
    ?""

RETURN NIL
