/*64.[Refactoring do 31] Elaborar um programa que efetue a leitura do nome e do sexo biológico de uma pessoa, 
apresentando como saída uma das seguintes mensagens: "Ilmo. Sr.", 
para o sexo informado como masculino ou a mensagem "Ilma. Sra. ", 
para o sexo informado como feminino. Apresente também abaixo da mensagem impressa o nome da pessoa. 
Os valores válidos para o sexo são “M” para masculino ou “F” para feminino. Não poderá ser aceito nome vazio. */

FUNCTION MAIN()

    LOCAL cNome := "", cSex := ""

    ACCEPT "Informe seu nome " TO cNome

    WHILE cNome == ""
        QOut("O nome deve ser informado!")
        ACCEPT "Informe seu nome " TO cNome
    ENDDO

    ACCEPT "Informe seu sexo (F/M) " TO cSex
    cSex := UPPER(cSex)

    IF(cSex = "F")
        QOut("Ilma. Sra. " )

    ELSEIF(cSex = "M")
        QOut("Ilmo. Sr. " )
    end if

    QOut( cNome )

RETURN nil
