/*14.Organize as funções de PV e FV numa unidade de funções financeiras.*/


Function PV()

LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

  Do CASE
        CASE cJcs $ "Cc" //Lê-se, caso a variavel esteja contida em "C" ou "c"
        nVP := (nVF/((1+nI))**nTemp) //Ou nVP := (nVF*(1+nI)**-nTemp)
        
        CASE cJcs $ "Ss"
        nVP := nVF/(1+nI*nTemp)         
    ENDCASE

RETURN nVP      

Function FV()

LOCAL nVF := 0, nVp := 0, nI := 0, nTemp := 0, nJ := 0, cJcs := ""

   Do CASE
        CASE cJcs $ "Cc" //Lê-se, caso a variavel esteja contida em "C" ou "c"
        nVF := (nVP*( 1 + nI ))**nTemp //Editei a fórmula pois pesquisando estava errado no enunciado 
        nJ := nVF - nVP
        CASE cJcs $ "Ss"
        nVF := nVP*nI*nTemp //Editei a fórmula pois pesquisando estava errado no enunciado
        nJ := nVF - nVP
    ENDCASE

RETURN nVF      
