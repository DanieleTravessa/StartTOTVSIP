/*32.Fa�a uma fun��o de nome �encrypt�, que recebe uma string e realiza a criptografia desta string. 
Essa criptografia pode ser uma mera troca de caracteres com base na tabela ASCII e/ou troca de posi��o de caracteres. 
Em seguida fa�a um programa que a partir de uma senha informada pelo usu�rio utilize a fun��o criada para codific�-la e
apresente na tela a senha criptografada.*/
FUNCTION MAIN()

    Local cSenha := ""

    ACCEPT "Digite a senha: " to cSenha
    Encrypt(cSenha)

RETURN NIL

Static Function Encrypt(cSenha)

    Local cRet := ""
    Local cAsc :=""
    Local nCont
    Local nSen := 0

    FOR nCont = 1 TO Len(CSenha) 
        nSen := hb_RandomInt(1,90)
        cAsc := CHR(nSen)
        cRet+= cAsc
    NEXT

    ?"Sua senha criptografada eh: " + cRet
    ?""
    ?"-~-~-~-~-~-~-~-~"
    ?""
RETURN  cSenha

