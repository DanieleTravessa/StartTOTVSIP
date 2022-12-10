/*1. Criar um programa que exiba o caractere estendido 219 no centro da
tela e que permita movimentá-lo pela tela com a utilização das setas
do teclado. Deve ser observado os limites da tela. Criar um
procedimento “movepara...” para cada uma das 4 direções.*/

REQUEST HB_GT_WIN_DEFAULT

#define nLines 25
#define nColons 80

function Main()

    // Definição de variáveis
    public nPosX := 0, nPosY := 0

    SetMode(nLines,nColons)

    // Posição Inicial do caractere
    nPosX := nLines / 2
    nPosY := nColons / 2

    // Exibição dos dados
    AtualizaTela()

    while lastkey() <> 27
        INKEY(0)

        // SETA PRA CIMA
        if lastkey() == 5
            moveParaCima()
        endif

        // SETA PRA BAIXO
        if lastkey() == 24
            moveParaBaixo()
        endif

        // SETA PRA ESQUERDA
        if lastkey() == 19
            moveParaEsquerda()
        endif

        // SETA PRA DIREITA
        if lastkey() == 4
            moveParaDireita()
        endif
    enddo
return nil

function AtualizaTela()
    SET COLOR to G++
    clear screen
    @1,1 to nLines - 1,nColons - 1 DOUBLE
    @nPosX,nPosY SAY chr(219)
    @24,16 SAY "MOVIMENTE O CARACTERE COM AS SETAS (ESC P/ SAIR)"
return nil

function moveParaCima()
    nPosX -= 1
    nPosX := max(nPosX, 2)
    AtualizaTela()
return nil

function moveParaBaixo()
    nPosX += 1
    nPosX := min(nPosX, nLines - 2)
    AtualizaTela()
return nil

function moveParaEsquerda()
    nPosY -= 1
    nPosY := max(nPosY, 2)
    AtualizaTela()
return nil

function moveParaDireita()
    nPosY += 1
    nPosY := min(nPosY, nColons - 2)
    AtualizaTela()
return nil
