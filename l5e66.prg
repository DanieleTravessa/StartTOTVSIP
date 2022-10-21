/*66.Um colega seu que trabalha no setor financeiro, mensalmente, tem que reajustar valores de contratos recorrentes, 
com fatores acumulados de �ndices diversos, dependendo de cada contrato, tais como: IGPM, IPCA, dentre outros. 
Sabendo que voc� agora � um desenvolvedor, ele lhe solicitou que desenvolva uma calculadora 
para c�lculo do fator de acumulado de acr�scimo ou decr�scimo, que dever� ser aplicado ao contrato. 
Ele quer digitar um a um os fatores mensais e pressionando a tecla �ESC� ao final da s�rie de valores, 
ver o resultado do fator acumulado e, tamb�m, a quantidade de fatores digitados. 
Quer tamb�m, ter a op��o de continuar calculando novas s�ries de fatores sem ter que sair do programa e 
execut�-lo novamente at� que realmente queira sair. 
Analisando a solicita��o do seu amigo voc� destacou alguns pontos que dever� levar em considera��o na elabora��o do programa: 
a. O c�lculo do acumulado � feito atrav�s da multiplica��o dos fatores (produt�rio). 
b. S� s�o v�lidos fatores positivos; menores que zero e maiores do que um. 
*/
/*
C�lculo  de  juros  compostos
*/
function Main()

    Local nTaxaAum := 0, nTaxaDes := 0, lSair := .f., cOpcao := "", nTaxa := 0, nProd := 0

    While !lSair
        ACCEPT "Gostaria de efetuar contrato de acrescimo (A) ou decrescimo (D): " to cOpcao
          cOpcao := UPPER(cOpcao)

        IF cOpcao == "A"
            ACCEPT "Digite o valor da taxa: " to nTaxa
            ACCEPT "Digite o valor do produto: " to nProd
            nTaxaAum := (1 + (Val(ntaxa) / 100)) * Val(nProd)

            QOUT("O valor atualizado do produto e: " + alltrim(str(nTaxaAum)))

        ELSEIF cOpcao == "D"
            ACCEPT "Digite o valor da taxa: " to nTaxa
            ACCEPT "Digite o valor do produto: " to nProd
            nTaxaDes := (1 - (Val(ntaxa) / 100)) * Val(nProd)

            QOUT("O valor atualizado do produto e: " + alltrim(str(nTaxaDes)))

        ELSEIF cOpcao == "ESC"
            lSair := .t. 


        ELSEIF cOpcao != "A" .or.cOpcao != "D" .or. cOpcao != "ESC"
            Qout("Opcao incorreta, tente novamente" + chr(10))
            LOOP

        ENDIF
    ENDDO

RETURN Nil
