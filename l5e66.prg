/*66.Um colega seu que trabalha no setor financeiro, mensalmente, tem que reajustar valores de contratos recorrentes, 
com fatores acumulados de índices diversos, dependendo de cada contrato, tais como: IGPM, IPCA, dentre outros. 
Sabendo que você agora é um desenvolvedor, ele lhe solicitou que desenvolva uma calculadora 
para cálculo do fator de acumulado de acréscimo ou decréscimo, que deverá ser aplicado ao contrato. 
Ele quer digitar um a um os fatores mensais e pressionando a tecla “ESC” ao final da série de valores, 
ver o resultado do fator acumulado e, também, a quantidade de fatores digitados. 
Quer também, ter a opção de continuar calculando novas séries de fatores sem ter que sair do programa e 
executá-lo novamente até que realmente queira sair. 
Analisando a solicitação do seu amigo você destacou alguns pontos que deverá levar em consideração na elaboração do programa: 
a. O cálculo do acumulado é feito através da multiplicação dos fatores (produtório). 
b. Só são válidos fatores positivos; menores que zero e maiores do que um. 
*/
/*
Cálculo  de  juros  compostos
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
