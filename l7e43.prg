/*43.Jogo da mágica. Nesta mágica as cartas de um baralho serão apresentadas na tela dispostas em 7 linhas e 3 colunas. 
O programa será capaz de adivinhar uma carta selecionada pelo usuário, que apenas indicará em qual coluna a carta se encontra. 
[Solicitar demonstração ao professor]. Para implementar esse interessante jogo, implemente os seguintes passos:*/


FUNCTION MAIN()

LOCAL aBaralho := {}, aBaralho21 := {}, aColuna1 := {}, aColuna2 := {}, aColuna3 := {}, aMatrizCart := {}
LOCAL aCartas := {}, aFaces := {}, aNipes := {}, aCopas := {}, aOuros := {}, aPaus := {}, aEspadas := {}
LOCAL cNipe := "", cNipeCop :=CHR(003), cNipeOu :=CHR(004), cNipePa :=CHR(005), cNipeEs :=CHR(006)
LOCAL nCont := 0, nCarta := 0, nColuna := 0

/*a. Montar um vetor de 52 posições contendo todas as cartas de cada naipe do baralho. 
Dica: utilize uma string de 2 posições para representar cada carta. Exemplo: o rei de espadas seria ‘K’+ #006 (caractere ASCII 6); 
o ás de copas seria ‘A’ + #003; o 5 de ouros seria ‘5’ + #004; a dama de paus seria ‘Q’ + #005.*/

  aFaces := {"A", "2", "3", "4", "5", "6", "7", "8", "9", "X", "J", "Q", "K"}

  FOR EACH nCont in aFaces
    cNipe := nCont + cNipeCop
    AADD(aCopas, cNipe) 
  NEXT

  FOR EACH nCont in aFaces
    cNipe := nCont + cNipeOu
    AADD(aOuros, cNipe) 
  NEXT

  FOR EACH nCont in aFaces
    cNipe := nCont + cNipePa
    AADD(aPaus, cNipe) 
  NEXT

  FOR EACH nCont in aFaces
    cNipe := nCont + cNipeEs
    AADD(aEspadas, cNipe) 
  NEXT

  FOR nCont := 1 to 13 
    AADD(aCartas, aCopas[nCont])
    AADD(aCartas, aOuros[nCont])
    AADD(aCartas, aPaus[nCont])
    AADD(aCartas, aEspadas[nCont])
  NEXT

//b. Embaralhar as cartas dentro desse vetor.
  
  DO WHILE LEN(aBaralho) != LEN(aCartas)
    cNipe := HB_RandomInt(LEN(aCartas))
    nCarta := ASCAN(aBaralho, aCartas[cNipe]) // Checa a existencia e a posição do elemento no Array
    
    IF nCarta = 0 // Caso a posição seja 0 indica que o elemento não consta no Array
      AADD(aBaralho, aCartas[cNipe]) //Dada essa condição o programa adiciona o elemento no Array
    ENDIF
  ENDDO

/*c. Montar um vetor de 21 posições contendo as 21 primeiras cartas do baralho já embaralhado. Nesta mágica apenas utilizaremos
21 cartas.*/

  FOR nCarta := 1 to 21 
    AADD(aBaralho21, aBaralho[nCarta])
  NEXT

/*d. Montar uma matriz de 7 linhas por 3 colunas onde a primeira célula receberá a última carta do vetor a segunda a penúltima e
assim sucessivamente até que a última célula que se encontra na 7a linha da 2a coluna receba a primeira carta do vetor de 21
cartas.*/
  FOR nCarta :=  21 to 15 step -1
    AADD(aColuna1, aBaralho21[nCarta])
  NEXT

  FOR nCarta :=  14 to 8 step -1
    AADD(aColuna2, aBaralho21[nCarta])
  NEXT

  FOR nCarta :=  7 to 1 step -1
    AADD(aColuna3, aBaralho21[nCarta])
  NEXT

  AADD(aMatrizCart, aColuna1)
  AADD(aMatrizCart, aColuna2)
  AADD(aMatrizCart, aColuna3)

//e. Apresentar a matriz na tela e solicitar que o usuário escolha uma carta e indique em qual coluna ela se encontra.
    
  ?hb_valtoexp(aMatrizCart)
  ?""
  ?"      >>>>>>>>>>Escolha uma carta!<<<<<<<<<<"
  ?""
  WAIT
  
  ACCEPT "----> Agora me diga em qual coluna ela estah: " to nColuna
  ?""
  nColuna := VAL(nColuna)
  aBaralho21 := {}

/*f. Preencher o vetor de 21 posições a partir das cartas da matriz 7 x 3 sendo que as cartas da coluna informada pelo usuário
deverão ocupar as posições de 8 a 14 do vetor e as demais colunas as posições de 1 a 7 e 15 a 21 respectivamente.*/
//STATIC FUNCTION ESCOLHA(nCarta, aBaralho21, aMatrizCart, aColuna1, aColuna2, aColuna3, nColuna)   

    DO CASE
       CASE nColuna == 1
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna3[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna1[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna2[nCarta])
          NEXT
              
        CASE nColuna == 2
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna1[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna2[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna3[nCarta])
          NEXT
            
        CASE nColuna == 3
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna1[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna3[nCarta])
          NEXT
          FOR nCarta := 1 to 7 
            AADD(aBaralho21, aColuna2[nCarta])
          NEXT
        ENDCASE

/*g. Repetir os passos de “d” a “f” por mais 2 vezes sendo que o usuário não escolhera uma nova carta, apenas indicará em que
coluna está a carta escolhida inicialmente.*/

//1°vez

//?hb_valtoexp(aBaralho21) <-- Print de checagem


  aColuna1    := {}
  aColuna2    := {}
  aColuna3    := {}
  aMatrizCart := {}
  aBaralho    := {}

  FOR EACH nCont IN aBaralho21
    AADD(aBaralho, nCont)
  NEXT
  FOR nCarta := 1 to 19 Step 3
    AADD(aColuna1, aBaralho[nCarta])
  NEXT        
  FOR nCarta := 2 to 20 Step 3    
    AADD(aColuna2, aBaralho[nCarta]) 
  NEXT
  FOR nCarta := 3 to 21 Step 3            
    AADD(aColuna3, aBaralho[nCarta]) 
  NEXT    
  
  AADD(aMatrizCart, aColuna1)
  AADD(aMatrizCart, aColuna2)
  AADD(aMatrizCart, aColuna3)

  ?hb_valtoexp(aMatrizCart)
    
  ACCEPT "-->> Me diga em qual coluna ela estah: " to nColuna

  nColuna := VAL(nColuna)
  aBaralho21 := {}  

  DO CASE
    CASE nColuna == 1
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna2[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna1[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna3[nCarta])
      NEXT
              
    CASE nColuna == 2
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna1[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna2[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna3[nCarta])
      NEXT
            
    CASE nColuna == 3
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna1[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna3[nCarta])
      NEXT
      FOR nCarta := 1 to 7 
        AADD(aBaralho21, aColuna2[nCarta])
      NEXT
  ENDCASE

//2°vez

  aColuna1    := {}
  aColuna2    := {}
  aColuna3    := {}
  aMatrizCart := {}
  aBaralho    := {}

  FOR EACH nCont IN aBaralho21
    AADD(aBaralho, nCont)
  NEXT

     FOR nCarta := 1 to 19 Step 3
        AADD(aColuna1, aBaralho[nCarta])
    NEXT        
    FOR nCarta := 2 to 20 Step 3    
        AADD(aColuna2, aBaralho[nCarta]) 
    NEXT
    FOR nCarta := 3 to 21 Step 3            
        AADD(aColuna3, aBaralho[nCarta]) 
    NEXT    
        
  
  AADD(aMatrizCart, aColuna1)
  AADD(aMatrizCart, aColuna2)
  AADD(aMatrizCart, aColuna3)

  ?hb_valtoexp(aMatrizCart)
  ?""

  ACCEPT "Me diga em qual coluna ela estah: " to nColuna
  ?""
  nColuna := VAL(nColuna)

    aBaralho21 := {}  
    Do CASE
       CASE nColuna == 1
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna2[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna1[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna3[nCarta])
          NEXT
              
        CASE nColuna == 2
          FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna1[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna2[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna3[nCarta])
          NEXT
            
        CASE nColuna == 3
              FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna1[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna3[nCarta])
           NEXT
           FOR nCarta := 1 to 7 
           AADD(aBaralho21, aColuna2[nCarta])
          NEXT
        ENDCASE

//h. Exibir na tela a 11a carta do vetor de 21 posições.

  ?"A carta que voce escolheu foi a: "
  ?""
  ?"*************************"  
  ?"*                       *"
  ?"*                       *"
  ?"*        ", hb_valtoexp(aBaralho21[11]), "         *"
  ?"*                       *"
  ?"*                       *"
  ?"*                       *"
  ?"*************************"
  ?""
  ?"-~-~-~-~-~-~-~-~"
  ?""
RETURN NIL

/*Eu fiz o código no passo a passo do enunciado, acontece que ele não traz a carta correta.
Consultando tutoriais sobre o referido truque na internet percebi que a correta forma de redistribuição das cartas deve
se dar por linhas e não por colunas. Refiz o código aplicando esse conceito e consegui consertar o bug.
Então apesar de não seguir a partir do passo (g) exatamente como sugerido no enunciado, o programa está retornando o resultado corretamente. 




//Impressões de Checagem: 
// ?hb_valtoexp(aCopas)
// ?hb_valtoexp(aOuros)
// ?hb_valtoexp(aPaus)
// ?hb_valtoexp(aEspadas)
// ?hb_valtoexp(aCartas)
// ?hb_valtoexp(aBaralho)
//?hb_valtoexp(aBaralho21)
//?hb_valtoexp(aColuna1)
//?hb_valtoexp(aColuna2)
//?hb_valtoexp(aColuna3)
//?hb_valtoexp(aMatrizCart)*/
