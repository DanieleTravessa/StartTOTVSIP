/*
41.Considere a matriz MAT, com o conte�do apresentado a seguir:

        /-------------------/
        /   O   Q   *   I   /
MAT =   /   E   *   E   S   /
        /   R   E   U   T   /
        /   A   *   *   S   /
        /-------------------/  

Atrav�s de teste de mesa, apresente o conte�do da matriz MAT, ap�s
a execu��o do trecho de programa abaixo:

Para i de 1 at� 
Aux <-- MAT [i,j]
MAT [i,j] <-- MAT [j,i]
MAT [j,i] <-- AUX;
FIM-PARA
Aux <- MAT[1,1];
Mat[1,1] <- MAT[4,4];
Mat[4,4] <- Aux;
Aux <- Mat[2,2]
Mat[2,2] <- Mat[3,3];
Mat[3,3] <- Aux;

/* 
                >>Atrav�s do teste de mesa constatou-se que:
   >>> O programa devolve a frase: "SERA QUE E ISTO" <<<
*/

