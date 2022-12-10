/*81.Jogo do Jokenpô. Desenvolva o jogo “Papel, pedra e tesoura” entre o usuário e o computador. 
Após o usuário informar sua escolha, o computador gera sua opção (de maneira randômica); 
informa a opção gerada e compara-a com a opção do usuário, informando quem ganhou aquela jogada. 
Atualiza e exibe um placar que acumula os resultados de cada jogada e pergunta se o usuário deseja continuar 
o jogo (encerrar com ESC). Após a primeira versão criar algumas “mods” para o game. 
a. Torná-lo bilíngue (português e inglês). Esta opção deverá ser dada no início do jogo. 
Dica: crie constantes para os labels e mensagens. 
b. Para melhorar a aleatoriedade do computador. 
Ao invés de 1 a 3 gere valores entre 1 e 9 ou 1 e 12 e, reduza-os após gerados. 
c. Melhore a interface visual. Utilizando caracteres estendidos ASCII e “ASCII arts”. 
*/
FUNCTION MAIN ()

    //#variáveis para uso dentro loop while que segue abaixo
    //LOCAL lGAME := .T.                                       
    //LOCAL aJog := {papel,tesoura,pedra}                 
    //LOCAL aRes := {empate','você venceu','Eu venci'}    
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
        ?"Você digitou um número inválido"
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

    Você jogou nRcont '+jog[jog_cpu-1]+', Resultado: '+res[Resultado])

    WAIT(2)
    res_cont[Resultado]=res_cont[Resultado]+1
    print('
    Tivemos até agora '+str(res_cont[0])+' empates, '+str(res_cont[1])+' vitórias suas e '+str(res_cont[2])+' vitórias de Python')

    sleep(2)
    ?"Vamos jogar novamente? (S/N)')
    x=input()
    if x=='N' or x=='n':
        game=False
    elif x=='S' or x=='s':
        game=True
    else:
        print('Resposta inválida, digitou '+x)
        break
#Pergunta ao usuário se quer permanecer no jogo ou sair, com a lógica de
<a href="/mercado/stock/sa.aspx" title="sa" target="_blank">sa</a>ída do loop
    sleep(2)
?Obrigado por jogar!')?
from time import sleep
import random


   Você jogou '+jog[jog_user-1]+', Python jogou '+jog[jog_cpu-1]+', Resultado: '+res[Resultado])

    #Soma os resultados das várias iterações do loop e apresenta resultado
    sleep(2)
    res_cont[Resultado]=res_cont[Resultado]+1
    print('
Tivemos até agora '+str(res_cont[0])+' empates, '+str(res_cont[1])+' vitórias suas e '+str(res_cont[2])+' vitórias de Python')


print('
Obrigado por jogar!')?

