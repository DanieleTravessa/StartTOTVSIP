/*14.Organize as fun��es de PV e FV numa unidade de fun��es financeiras.*/


Function PV()

LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

  Do CASE
        CASE cJcs $ "Cc" //L�-se, caso a variavel esteja contida em "C" ou "c"
        nVP := (nVF/((1+nI))**nTemp) //Ou nVP := (nVF*(1+nI)**-nTemp)
        
        CASE cJcs $ "Ss"
        nVP := nVF/(1+nI*nTemp)         
    ENDCASE

RETURN nVP      

Function FV()

LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

   Do CASE
        CASE cJcs $ "Cc" //L�-se, caso a variavel esteja contida em "C" ou "c"
        nVF := (nVP*( 1 + nI ))**nTemp //Editei a f�rmula pois pesquisando estava errado no enunciado 
        nJ := nVF - nVP
        CASE cJcs $ "Ss"
        nVF := nVP*nI*nTemp //Editei a f�rmula pois pesquisando estava errado no enunciado
        nJ := nVF - nVP
    ENDCASE

RETURN nVF      
