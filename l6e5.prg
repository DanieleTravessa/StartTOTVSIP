/*5. Implementar um procedimento que dado o dividendo e o divisor de
uma divis�o, calcule tanto o quociente como o resto da divis�o inteira. O
resultado n�o dever� ser exibido pelo procedimento. Dever� ficar
dispon�vel para ser exibido ou manipulado pelo programa principal.*/

Function Main()

LOCAL nDdo := 0, nDr := 0, nR := 0, nQ := 0

?"****Vamos efetuar uma divisao!!****"
ACCEPT "Informe o dividendo: " to nDdo
ACCEPT "Informe o divisor: " to nDr

nDdo := Val(nDdo)
nDr := Val(nDr)

nQ := QUOCIENTE(nDdo, nDr, nQ)
nR := RESTO(nDdo, nDr, nR)

?"Essa divisao resultou de", ALLTRIM(STR(nQ)), "com resto", ALLTRIM(STR(nR))
?""

RETURN NIL

FUNCTION QUOCIENTE(nDdo, nDr, nQ)

nQ := nDdo/nDr

RETURN nQ

FUNCTION RESTO(nDdo, nDr, nR)

nR := nDdo%nDr

RETURN nR
