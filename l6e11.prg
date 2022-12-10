/*11.Faça um algoritmo que calcule o reajuste de um salário. O usuário
informará o salário atual e o percentual de reajuste.*/

FUNCTION MAIN()

LOCAL nSal := 0, nReaj := 0, nPer := 0

?"$$$Vamos Calcular o seu reajuste salarial!!$$$"
ACCEPT "Insira seu salario: R$" to nSal
ACCEPT "Insira qual sera o percentual: " to nPer

nSal := Val(nSal)
nPer := Val(nPer)
nReaj := ALLTRIM(STR(NSAL(nSal, nReaj, nPer)))

?"O seu salario reajustado e de R$", nReaj
?""

RETURN NIL

FUNCTION NSAL(nSal, nReaj, nPer)

    nReaj := nSal+(nSal*(nPer/100))

RETURN nReaj
