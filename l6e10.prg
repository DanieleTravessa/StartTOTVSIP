/*10.Escreva uma fun��o que calcule a m�dia de 3 valores quaisquer. O
programa principal dever� ler os 3 valores informados pelo usu�rio e
apresentar a m�dia.*/

FUNCTION MAIN()

LOCAL nN1 := 0, nN2 :=0, nN3 := 0, nMedia := 0

?"Insira tres valores para calcularmos a media entre eles"
ACCEPT "Valor 1: " to nN1
ACCEPT "Valor 2: " to nN2
ACCEPT "Valor 3: " to nN3

nN1 := Val(nN1)
nN2 := Val(nN2)
nN3 := Val(nN3)

nMedia := ALLTRIM(STR(MEDIA(nN1, nN2, nN3, nMedia)))

?"A media desses valores e", nMedia
?""

RETURN NIL

FUNCTION MEDIA(nN1, nN2, nN3, nMedia)
    
    nMedia := (nN1+nN2+nN3)/3

RETURN nMedia
