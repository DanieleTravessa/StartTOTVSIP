/*81.Jogo do Jokenp�. Desenvolva o jogo �Papel, pedra e tesoura� entre o usu�rio e o computador. 
Ap�s o usu�rio informar sua escolha, o computador gera sua op��o (de maneira rand�mica); 
informa a op��o gerada e compara-a com a op��o do usu�rio, informando quem ganhou aquela jogada. 
Atualiza e exibe um placar que acumula os resultados de cada jogada e pergunta se o usu�rio deseja continuar 
o jogo (encerrar com ESC). Ap�s a primeira vers�o criar algumas �mods� para o game. 
a. Torn�-lo bil�ngue (portugu�s e ingl�s). Esta op��o dever� ser dada no in�cio do jogo. 
Dica: crie constantes para os labels e mensagens. 
b. Para melhorar a aleatoriedade do computador. 
Ao inv�s de 1 a 3 gere valores entre 1 e 9 ou 1 e 12 e, reduza-os ap�s gerados. 
c. Melhore a interface visual. Utilizando caracteres estendidos ASCII e �ASCII arts�. 
*/
FUNCTION MAIN ()

    //#vari�veis para uso dentro loop while que segue abaixo
    //LOCAL lGAME := .T.                                       
    //LOCAL aJog := {papel,tesoura,pedra}                 
    //LOCAL aRes := {empate','voc� venceu','Eu venci'}    
    LOCAL nJogador := 0
    LOCAL nComputador := 0
    LOCAL nRcont := 0

    WHILE lGame := .T.

        ?"Faca sua jogada: "
        ?"1 para Papel"
        ?"2 para Tesoura"
        ?"3 para Pedra"
        ?""
        
        ACCEPT to nJogador
        nJogador := Val(nJogador)
    
        IF nJogador <= 0 .or. nJogador >= 4
        ?"Voc� digitou um n�mero inv�lido"
        WAIT(2)

        nComputador := HB_RandomInt(1,3)

            //Avalia quem ganhou    
            IF nJogador==nComputador
            ?"Empatamos"  
            ELSEIF (nJogador==1 .and. nComputador==3) .or. (nJogador==2 .and. nComputador==1) .or. (nJogador==3 .and. nComputador==2)  
            ?"Voce venceu!!!"
            ELSE
            ?"Eu venci!!!!!!"
            ENDIF
        ENDIF
        
    ENDDO

RETURN NIL

    Voc� jogou nRcont '+jog[jog_cpu-1]+', Resultado: '+res[Resultado])

    WAIT(2)
    res_cont[Resultado]=res_cont[Resultado]+1
    print('
    Tivemos at� agora '+str(res_cont[0])+' empates, '+str(res_cont[1])+' vit�rias suas e '+str(res_cont[2])+' vit�rias de Python')

    sleep(2)
    ?"Vamos jogar novamente? (S/N)')
    x=input()
    if x=='N' or x=='n':
        game=False
    elif x=='S' or x=='s':
        game=True
    else:
        print('Resposta inv�lida, digitou '+x)
        break
#Pergunta ao usu�rio se quer permanecer no jogo ou sair, com a l�gica de
<a href="/mercado/stock/sa.aspx" title="sa" target="_blank">sa</a>�da do loop
    sleep(2)
?Obrigado por jogar!')?
from time import sleep
import random


   Voc� jogou '+jog[jog_user-1]+', Python jogou '+jog[jog_cpu-1]+', Resultado: '+res[Resultado])

    #Soma os resultados das v�rias itera��es do loop e apresenta resultado
    sleep(2)
    res_cont[Resultado]=res_cont[Resultado]+1
    print('
Tivemos at� agora '+str(res_cont[0])+' empates, '+str(res_cont[1])+' vit�rias suas e '+str(res_cont[2])+' vit�rias de Python')


print('
Obrigado por jogar!')?

