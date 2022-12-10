/*12.Fa�a um programa para c�lculo do montante (valor futuro) a partir de
um dado capital (valor presente). O programa dever� solicitar ao
usu�rio o valor do capital (valor presente), a taxa de juros e o prazo.

O programa tamb�m dever� permitir que o usu�rio escolha se quer
utilizar o regime de capitaliza��o simples ou composto. Ao final
apresentar ao usu�rio o montante (valor futuro e o valor dos juros).
� F�rmulas:
? Juros simples: VF = VP ( 1 + i + n )
? Juros compostos: VF = VP ( 1 + i )^n
? Juros a partir do VF: J = VF - VP
� Onde:
? VF = Montante ou Valor Futuro
? VP = Capital ou Valor Presente
? J = Juros
? i = taxa em decimal
? n = prazo
*/
FUNCTION MAIN()

    LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

    ?"***Calculadora de Juros***"
    ACCEPT "Informe o valor do capital: R$" to nVp
    ACCEPT "Informe a taxa de juros aplicada: " to nI
    ACCEPT "Informe o prazo " to nTemp
    ACCEPT "Informe o tipo de capitalizacao. Juros Compostos ou Juros Simples (C/S)? " to cJcs

    nVp := Val(nVp)
    nI := Val(nI)
    nTemp := Val(nTemp)

    Do CASE
        CASE cJcs $ "Cc" //L�-se, caso a variavel esteja contida em "C" ou "c"
        nVF := (nVP*( 1 + nI ))**nTemp //Editei a f�rmula pois pesquisando estava errado no enunciado 
        nJ := nVF - nVP
        CASE cJcs $ "Ss"
        nVF := nVP*(1+nI)*nTemp //Editei a f�rmula pois pesquisando estava errado no enunciado
        nJ := nVF - nVP
    ENDCASE

    ? "O valor do montante sera", ALLTRIM(STR(nVF)), "com um juros acumulado de ", ALLTRIM(STR(nJ))
    ?""


RETURN NIL
