/*81.Jogo do Jokenpô. Desenvolva o jogo “Papel, pedra e tesoura” entre o usuário e o computador. 
Após o usuário informar sua escolha, o computador gera sua opção (de maneira randômica); 
informa a opção gerada e compara-a com a opção do usuário, informando quem ganhou aquela jogada. 
Atualiza e exibe um placar que acumula os resultados de cada jogada e pergunta se o usuário deseja continuar 
o jogo (encerrar com ESC). Após a primeira versão criar algumas “mods” para o game. 
a. Torná-lo bilíngue (português e inglês). Esta opção deverá ser dada no início do jogo. 
Dica: crie constantes para os labels e mensagens. 
b. Para melhorar a aleatoriedade do computador. 
Ao invés de 1 a 3 gere valores entre 1 e 9 ou 1 e 12 e, reduza-os após gerados. 
c. Melhore a interface visual. Utilizando caracteres estendidos ASCII e “ASCII arts”. */

/***** Esse eu fiz com muuuuuuuita ajuda ******/

FUNCTION MAIN()

    LOCAL cIdioma := "",  aPF := {}

    cIdioma := idiomaJogo()

    IF cIdioma = "P"
        aPF := jokenPT()
    ELSE
        aPF := jokenEN()
    
    ENDIF

    ?"================================"
    ?"Placar final:"
    ?""
    ?"Jogador: ", AllTrim(str(aPF[1]))
    ?"AI: ", AllTrim(str(aPF[2]))
    ?"================================"
    ?""

RETURN NIL


// Seleciona idioma
STATIC FUNCTION idiomaJogo()

    LOCAL cDado := "", lRun := .T.

    WHILE lRun
        
        ACCEPT "Escolha o idioma Portugues// Choose the language English => (P / E): " to cDado
        
        cDado := UPPER(cDado)

        IF !IsDigit(cDado) .or. (cDado = "P" .and. cDado = "E")
            lRun := .F.
        ELSE
            ?"ERROR"       
        ENDIF
    ENDDO


return cDado

// Jogo portugues
STATIC FUNCTION jokenPT()

    LOCAL nJogo := 0, nAI := 0, nPlay := 0, nPP := 0, nPA := 0
    LOCAL aPlacar := {}, lRun := .T., cPlay := "", cStatus := "P"

    WHILE lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        IF nPlay = 1
            nPP++

        ELSE
            nPA++
        
        ENDIF
        
        ?"Voce: " + AllTrim(str(nPP))
        ?"AI: " + AllTrim(str(nPA))
                
        cPlay := validaOpc(cStatus)

        IF cPlay = "N"

            lRun := .F.

        ENDIF    

    ENDDO

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)


RETURN aPlacar

// Jogo ingles
STATIC FUNCTION jokenEN()

    LOCAL cStatus := "E", cPlay := "", lRun  := .T., aPlacar := {}
    LOCAL nJogo := 0, nAI := 0, nPlay := 0, nPP := 0, nPA := 0
    
    WHILE lRun

        nJogo := validaJogo(cStatus)

        nAI := hb_Randomint(1, 3)

        nPlay := fazJogada(nJogo, nAI, cStatus)

        IF nPlay = 1

            nPP++
        ELSE

            nPA++
        
        ENDIF
        
        ?"You: " + AllTrim(str(nPP))
        ?"AI: " + AllTrim(str(nPA))

        
        cPlay := validaOpc(cStatus)

        IF cPlay = "N"

            lRun := .F.

        ENDIF    

    ENDDO

    Aadd(aPlacar, nPP)
    Aadd(aPlacar, nPA)

RETURN aPlacar

//Valida jogada
STATIC FUNCTION validaJogo(cStatus)

    LOCAL lRun := .T., cJogada := "", nDado := 0

    WHILE lRun

        IF cStatus = "P" // Menu para pt
        
            ACCEPT "Pedra (D), papel (L) ou tesoura (T)? " to cJogada
            cJogada := UPPER(cJogada)

            IF cJogada = "D"

                nDado := 1
                ?"Voce escolheu PEDRA"
                ?"    _______"
                ?"---'   ____)"
                ?"      (_____)"
                ?"       (_____)"
                ?"       (____)"
                ?"---.__(___)"
                lRun := .F.
                
            ELSEIF cJogada = "L"

                nDado := 2
                ?"Voce escolheu PAPEL"
                ?"---'   ____)____"
                ?"          ______)"
                ?"          _______)"
                ?"         _______)"
                ?"---.__________)"
        
                lRun := .F.

            ELSEIF cJogada = "T"

                nDado := 3
                ?"Voce escolheu TESOURA"
                ?"_______ "
                ?"---'____)____"
                ?"        ______)"
                ?"    __________)"
                ?"      (____)"
                ?"---.__(___)"
                
                lRun := .F.
            ELSE
               ?"INVALIDO"
            ENDIF

        ELSE // Menu para EN

            ACCEPT "Rock (R), paper (P) or scissors(S)? " to cJogada
            cJogada := UPPER(cJogada)

            if cJogada = "R"

                nDado := 1
                ?"You chose ROCK!"
                ?"    _______"
                ?"---'   ____)"
                ?"      (_____)"
                ?"       (_____)"
                ?"       (____)"
                ?"---.__(___)"
                lRun := .F.
                
            ELSEIF cJogada = "P"

                nDado := 2
                ?"You chose PAPER"
                ?"---'   ____)____"
                ?"          ______)"
                ?"          _______)"
                ?"         _______)"
                ?"---.__________)"
        
                lRun := .F.

            ELSEIF cJogada = "S"

                nDado := 3
                ?"You chose SCISSORS"
                ?"---'____)____"
                ?"        ______)"
                ?"    __________)"
                ?"      (____)"
                ?"---.__(___)"
            
                lRun := .F.

            ELSE                
                ?"INVALID"
                                   
            ENDIF
        ENDIF
    ENDDO
RETURN nDado


// Valida continuacao
STATIC FUNCTION validaOpc(cStatus)

    LOCAL cPlay := "", cDado := "", lRun := .T.

    WHILE lRun

        IF cStatus = "P"

          ACCEPT "Deseja continuar? (S/N) " to cPlay
          cPlay := UPPER(cPlay)

            IF ISDIGIT(cPlay) .or. (cPlay <> "S" .and. cPlay <> "N")
               
                ?"Opção invalida!"
         
            ELSE
                lRun := .F.
            ENDIF
        ELSE

            ACCEPT "Do you wish to continue? (Y/N)" to cPlay
            cPlay := UPPER(cPlay)

            IF ISDIGIT(cPlay) .or. (cPlay <> "Y" .and. cPlay <> "N")
                
                ?"Invalid option!"
            ELSE
                lRun := .F.
            ENDIF
        ENDIF
    ENDDO

    cDado := cPlay

RETURN cDado


// REALIZA JOGADA
STATIC FUNCTION fazJogada(nJogo, nAI, cStatus)

    LOCAL aMsg, nDado := 0

    IF cStatus = "P"

       aMsg := {"PEDRA! (D)", "PAPEL! (L)", "TESOURA! (T)"}

        IF nJogo = nAI

            ?"Empate!"

        ELSEIF (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)

            ?"O oponente jogou: " + aMsg[nAI]
            ?"Voce perdeu!"

            nDado := 2
        ELSE            
            ?"O oponente jogou: " + aMsg[nAI]
            ?"Voce ganhou!"

            nDado++
        ENDIF
    ELSE
        aMsg := {"ROCK!", "PAPER!", "SCISSORS!"}

        IF nJogo = nAI
            ?"Draw!"
        ELSEIF (nJogo = 1 .and. nAI = 2) .or. (nJogo = 2 .and. nAI = 3) .or. (nJogo = 3 .and. nAI = 1)
            ?"Opponent chose: " + aMsg[nAI]
            ?"You lose!"
            nDado := 2
        ELSE
            ?"Your opponet chose: " + aMsg[nAI]
            ?"You win! You rock!"

            nDado++
        ENDIF
    ENDIF
RETURN nDado
