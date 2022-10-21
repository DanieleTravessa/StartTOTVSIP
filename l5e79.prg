/*79.Jogo do “pim” infalível. Fazer um programa que simule o jogo do “pim”. 
Ele servirá para treinar competidores deste game. 
Neste jogo você vai verbalizando todos os números de 1 a 60, sendo que toda
vez que se passa por um múltiplo do número determinado como “pim’, ao invés de cantar o número, 
devemos dizer “pim”. Exemplo digamos que o “pim” serão múltiplos de 3. 
Deverá ser cantado: “1, 2, pim, 4, 5, pim, ..., 58, 59, pim”. 
Seu programa deverá simular esta situação. 
O usuário informará o número PIM e o programa  exibirá o resultado na tela. 
 Estabelecer um atraso a cada saída para que o jogador possa ira cantando juntamente com o programa. 
*/
FUNCTION MAIN()
    
    Local nNum:=0, nCont:=1

    FOR nCont:=1 TO 60
        IF nCont %3 == 0
            ?"Pim"
            TONE(1000, 15)
        ELSE
            Qout(Alltrim(STR(nCont)))
        ENDIF
    NEXT

RETURN NIL
