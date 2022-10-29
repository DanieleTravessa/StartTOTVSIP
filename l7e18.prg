/*18.Dada uma data informada pelo usuário, indicar ordinalmente o dia do ano que ela representa do 1o dia ao 365o/366o 
(conforme o ano for ou não bissexto). O usuário informará separadamente dos valores do dia, do mês e do ano pesquisado.*/
FUNCTION MAIN()

    Local nDia := 0, nMes := 0, nAno := 0, dData, nDiadoAno := 0, bBissexto := .F.

    ACCEPT "Informe o dia: " TO nDia
    ACCEPT "Informe o Mes: " TO nMes
    ACCEPT "Informe o Ano: " TO nAno

    dData := CToD(nAno + "/" + nMes + "/" + nDia)
    bBissexto := IsLeap(dData) // Verifica se um ano é bissexto
    dData := DMY(dData) // Converte a data para DD.MM.AA
    nDiadoAno := DoY(dData) // Apontar o dia do ano

    CLS
    IF bBissexto == .T.
        QOUT("A data ", dData, ", trata-se do ", Alltrim(Str(nDiadoAno)), "° dia de 366 dias desse ano!")
        ?""
    ELSE
        QOUT("A data ", dData, ", trata-se do ", Alltrim(Str(nDiadoAno)), "° dia de 365 dias desse ano!")
        ?""
    ENDIF
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN nil
