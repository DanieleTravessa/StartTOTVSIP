/*[Refactoring do 24] Ler quatro valores referentes a quatro notas escolares de um aluno e 
imprimir uma mensagem dizendo que o aluno foi aprovado, se o valor da m�dia escolar for maior ou igual a 7. 
Se o valor da m�dia for menor que 7, solicitar a nota de exame, sornar com o valor da m�dia e obter nova m�dia. 
Se a nova m�dia for maior ou igual a 5, apresentar uma mensagem dizendo que o aluno foi aprovado em exame. 
Se o aluno n�o foi aprovado, indicar uma mensagem informando esta condi��o. 
Apresentar com as mensagens o valor da m�dia do aluno, para qualquer condi��o. 
Aten��o. Dever� ser feita a consist�ncia dos dados de entrada para aceitar apenas notas com valores entre 0 e 10. */

Function Main()

    local nNum := 0, aux:=0, n_media:=0, nCont:=1, nExam:=0

    QOUT("Informa as 4 notas")
    for nCont :=1 to 4
    ACCEPT("Informe a nota: ") TO nNum
    nNum := Val(nNum)
    if nNum > 10 .Or. nNum < 0
        QOut("Informe um valor entre 0 e 10")
        nCont:=nCont-1
    else
        aux:=aux+nNum
    end if
    next

    n_media := (aux/4)

    if n_media >= 7 .And. n_media <= 10
        QOut("O aluno foi aprovado! Sua m�dia �: " + str(n_media))

    else 
        ACCEPT "Informe a nota do exame: " TO nExam
        nExam := Val(nExam)

        while nExam > 10 .Or. nExam < 0
            QOut("Informe um valor entre 0 e 10")
            ACCEPT "Informe a nota do exame: " TO nExam
            nExam := Val(nExam)
        enddo

        n_media = ((nExam+n_media)/2)

        if n_media >= 5
            QOut("O aluno foi aprovado ap�s o exame! Sua m�dia �: " + str(n_media))
        else
            QOut("O aluno foi reprovado ap�s o exame! Sua m�dia �: " + str(n_media)) 
        end if
    end if
RETURN nil


Function Main()

    local nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0, nMedia :=0, nEx := 0, nMEx := 0

    While nN1 > 0 .and. nN2 > 0 .and. nN3 > 0 .and.
    ACCEPT "Informe a primeira nota: " TO nN1
    ACCEPT "Informe a segunda nota: " TO nN2
    ACCEPT "Informe a terceira nota: " TO nN3
    ACCEPT "Informe a quarta nota: " TO nN4
    ?""

    nN1 := val(nN1)
    nN2 := val(nN2)
    nN3 := val(nN3)
    nN4 := val(nN4)
    nMedia := ((nN1 + nN2 + nN3 + nN4)/4) 
       


    IF nMedia >=7
        QOUT("Voce foi aprovado com", +AllTrim(Str(nMedia)),". Parabens!")
        ?""
    ELSEIF nMedia <7
        Accept "Informe a nota do exame:" to nEx
        nMEx := (val(nEx)+nMedia)/2
            If nMEx >= 5
            QOUT("Voce foi aprovado em exame com", +AllTrim(Str(nMEx)),". Parabens!")
            ?""
            ELSE
            QOUT("O aluno foi reprovado mesmo apos exame! Sua media final e: ", +AllTrim(Str(nMEx))) 
            ?""
            ENDIF
    ENDIF
        
RETURN NIL
