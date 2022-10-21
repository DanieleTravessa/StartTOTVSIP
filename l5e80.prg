/*80.Considere dados referentes a altura e o sexo de 40 pessoas. Fazer um algoritmo que calcule e escreva: 
a. A maior e a menor altura do grupo. 
b. A média de altura das mulheres. 
c. O número de homens. */
 
FUNCTION MAIN()

  LOCAL nAltura := 0, nH := 0, nMedialM := 0, cGen:="", nSomAlt := 0, nCount := 1, nM := 0, nAmaior := 0, nAmen := 0
  LOCAL nAltMul := 0
 
  WHILE nCount <= 4

    ACCEPT "Informe (H) para Homem e (M) para mulher: " TO cGen
    ACCEPT "Informe a altura em centimetros: " TO nAltura
    ?""

    nAltura := val(nAltura)
    cGen := UPPER(cGen)
 
    IF !(cGEN $ "MH")
      ? "Opcao incorreta!!"
      LOOP 
    ENDIF    
    IF cGen $ "M" 
        nAltMul += nAltura
        nM++  
      ELSE
        cGen := "H"
        nH++ 
    ENDIF
      
    nSomAlt += nALtura 
    nMedialM = nAltMul/nM  

    DO CASE
    CASE  nAltura > nAmaior
          nAmaior := nAltura
    CASE  nAmen < nAltura 
          nAmen := nAltura
    ENDCASE
        
   
    nCount++
  ENDDO

  ?"A maior altura do grupo e", AllTrim(Str(nAmaior)), "cm."
  ?"A menor altura do grupo e:", AllTrim(Str(nAmen)), "cm."
  ?"A media de altura das mulheres do grupo e:", AllTrim(Str(nMedialM)), "cm."
  ?"O numero de homens do grupo e", AllTrim(Str(nH)), "cm."
  ?""

RETURN NIL
