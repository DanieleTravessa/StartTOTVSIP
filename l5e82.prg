//82.Fazer um programa que leia 10 valores e apresente-os na ordem inversa em que foram digitados. 

Function Main()

    LOCAL nNumb := 0, nI := 10, nCont := 1, aOrd := {}, cMsg := ""

   DO WHILE nCont <= 10
        ACCEPT "Digite 10 numeros e vou apresenta-los na ordem inversa: " to nNumb
        nNumb := Val(nNumb)

        AAdd(aOrd, nNumb)

        nCont++
   enddo


    for nCont:= 10 to 1 step -1

        cMsg := cMsg + aLista[nI]
        nI--

    next nCont

    ?cMsg



Return Nil
