/*
41.Considere a matriz MAT, com o conteúdo apresentado a seguir:

        /-------------------/
        /   O   Q   *   I   /
MAT =   /   E   *   E   S   /
        /   R   E   U   T   /
        /   A   *   *   S   /
        /-------------------/  

Através de teste de mesa, apresente o conteúdo da matriz MAT, após
a execução do trecho de programa abaixo:

Para i de 1 até 
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
                >>Através do teste de mesa constatou-se que:
   >>> O programa devolve a frase: "SERA QUE E ISTO" <<<
*/

