/*4. Dado um n�mero de 1 at� 12, apresentar o n�mero de dias do m�s correspondente. 
Se o n�mero escolhido for 2 (fevereiro), considere 28
dias. Usar vetor.*/

FUNCTION MAIN()
//Dado um n�mero de 1 at� 12, apresentar o n�mero de dias do m�s correspondente. 
//Se o n�mero escolhido for 2 (fevereiro), considere 28 dias.

    LOCAL nM := 0, aM30 := {4, 6, 9, 11}, cEl
    /*, aM31 := {4, 6, 9, 11} esse vetor n�o foi necess�rio pelo uso do Otherwise*/

    ACCEPT "Informe o numero do mes correspondente : " TO nM

    nM := val(nM)
/*Usei uma estrutura de sele��o*/
    DO CASE
        CASE nM := aM30[cEl]
            QOut ("O mes tem 30 dias!")
            ?""
        CASE nM := 2
            QOUT ("O mes tem 28 dias!")
            ?""
        OTHERWISE
            QOUT ("O mes tem 31 dias!")
            ?""
    ENDCASE
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN NIL
