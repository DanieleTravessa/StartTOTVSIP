/*77.Um cliente utiliza uma determinada solu��o de GED/ECM. 
Nesta solu��o os usu�rios criam fichas de produtos e enviam uma s�rie de arquivos de imagens deste dado produto. 
Voc� foi solicitado a fazer uma rotina que v� lendo uma s�rie de dados informando o tamanho de cada arquivo em Megabytes. 
O programa dever� informar ao usu�rio um pr�ximo arquivo estourar o limite estabelecida de 1,5 Gigabaytes, para cada ficha. */

FUNCTION MAIN()

    LOCAL nSoma :=0, nNum :=0

    WHILE nSoma <= 1536
        ACCEPT("Informe o tamanho do arquivo em MB: ") to nNum
        nNum := Val(nNum)
        nSoma += nNum

        IF nSoma > 1536
            ?"Voc� atingiu a capacidade max de armazenamento de (1,5GB ou 1536MB)"
            EXIT
        ELSE
            ?"Ainda restam ",Alltrim(STR(1536-nSoma)),"MB de armazenamento"
        END IF
    ENDDO

RETURN NIL
