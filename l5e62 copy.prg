/*62.Jogo da forca - parte 1: Neste momento trataremos apenas da leitura do palpite (�chute�) do usu�rio. 
Fazer um programa que realize a consist�ncia de entrada da digita��o de um palpite do usu�rio de modo que 
ele seja for�ado a digitar uma letra efetivamente. 
Fazer 3 vers�es do programa, cada uma com uma das estruturas de repeti��o. 
Responder: qual achou mais adequada? Por qu�? 
*/

FUNCTION MAIN()

LOCAL cLetra := ""
    
//     return (c >= 'a' && c <= 'z') ? (c - 32) : c;
// }

//     printf("\nDigite uma palavra: ");
//     fgets(palavra, 20, stdin);
//     limpar_input();

//     trimEnd(palavra);

//     int i;
//     for (i = 0; palavra[i] != 0; i++) {
//         char c = palavra[i];
//         forca[i] = ehLetra(c) ? '_' : c;
//     }
// }

// int jogo(void) {
//     char tentativa;
//     int chances = 5;

//     int letras = 0;
//     int i;
//     for (i = 0; palavra[i] != 0; i++) {
//         if (ehLetra(palavra[i])) letras++;
//     }

//     while (chances > 0) {
//         limpar_tela();
//         printf("\nChances: %d - palavras tem %d letras\n\n", chances, letras);

//         printf("%s", forca);
//         if (strlen(erros) > 0) {
//             printf("\nErros: %s", erros);
//         }

//         printf("\n\nDigite uma letra: ");
//         scanf("%c", &tentativa);
//         limpar_input();

//         // Se o usu�rio digitou algo que n�o � letra, apenas insiste sem queimar uma chance.
//         if (!ehLetra(tentativa)) continue;

//         // Se o usu�rio digitou algo que ele j� tentou antes (seja errando ou acertando), apenas insiste sem queimar uma chance.
//         int jaTentou = 0;
//         for (i = 0; erros[i] != 0; i++) {
//             if (erros[i] == maiuscula(tentativa)) {
//                 jaTentou = 1;
//                 break;
//             }
//         }
//         if (jaTentou) continue;
//         for (i = 0; forca[i] != 0; i++) {
//             if (maiuscula(forca[i]) == maiuscula(tentativa)) {
//                 jaTentou = 1;
//                 break;
//             }
//         }
//         if (jaTentou) continue;

//         int ganhou = 1;
//         int achou = 0;
//         for (i = 0; palavra[i] != 0; i++) {
//             if (!ehLetra(palavra[i])) continue;
//             if (forca[i] == '_') {
//                 if (maiuscula(palavra[i]) == maiuscula(tentativa)) {
//                     forca[i] = palavra[i];
//                     achou = 1;
//                 } else {
//                     ganhou = 0;
//                 }
//             }
//         }

//         if (ganhou) {
//             return 1; // Ou seja, ganhou.
//         }

//         if (!achou) {
//             chances--;
//             erros[strlen(erros)] = maiuscula(tentativa);
//         }
//     }
//     return 0; // Ou seja, perdeu.
// }

// void mostrarResultado(int resultado) {
//     limpar_input();
//     if (resultado == 0) {
//         printf("\nVoce perdeu. \nA palavra era %s", palavra);
//     } else {
//         printf("\nParabens, voce acertou a palavra %s ", palavra);
//     }
// }

// int main() {
//     start();
//     int resultado = jogo();
//     mostrarResultado(resultado);
//     return 0;
// }
// As mudan�as que eu fiz foram:

// Estou desenvolvendo em um ambiente windows. Por causa disso, para mim ao inv�s de usar __fpurge, devo usar fflush e ao inv�s de system("clear"), uso system("cls"). Para resolver esse problema, eu uso o seguinte bloco:

// #if defined(__MINGW32__) || defined(_MSC_VER)
// #define limpar_input() fflush(stdin)
// #define limpar_tela() system("cls")
// #else
// #include <stdio_ext.h>
// #define limpar_input() __fpurge(stdin)
// #define limpar_tela() system("clear")
// #endif
// De forma que da� eu tenho as macros limpar_input e limpar_tela definidas para a chamada correta independente do ambiente de compila��o.

// Tal como mencionado em um coment�rio pelo Pablo, usar o fflush(stdin) � em geral comportamento indefinido. Entretanto, no windows (que n�o tem o __fpurge), ele � definido. Esse #if garante tamb�m que o fflush(stdin) n�o ser� usado em um ambiente que n�o seja o windows.

// Esse trecho de c�digo n�o faz o que voc� quer:

// forca[i] == tentativa;
// Observe que voc� usou o igual duplo ao inv�s do igual simples!

// A sua l�gica tinha alguns s�rios problemas: Era poss�vel usar v�rias vezes a mesma letra sem queimar tentativas, bagun�ando com o j e podendo ganhar sem achar todas as letras; letras mai�sculas eram consideradas diferentes de min�sculas e palavras que contivessem s�mbolos que n�o fossem letras (em especial _) podiam fazer o jogo n�o ficar jog�vel. Na minha nova l�gica, esses problemas s�o resolvidos.

// Evite usar printf com par�metros a mais n�o usados, tal como aqui:

// printf("\nParabens, voce acertou a palavra ", chances, letras);
// Tente declarar as vari�veis no menor escopo poss�vel. Vari�veis globais devem ser evitadas sempre que poss�vel. Consegui transformar tentativa, i, j, chances e letras em vari�veis locais. A vari�vel cont foi eliminada.

// N�o declare uma fun��o com o tipo de retorno int se voc� n�o retorna nada dela. Neste caso use void.

// N�o h� nada de errado em usar aritm�tica de ponteiros, mas � uma coisa que � bom ser evitada, uma vez que � uma das coisas que fazem com que seja muito f�cil fazer besteiras em C. Por causa disso eu reescrevi a sua fun��o trimEnd para n�o usar aritm�tica de ponteiros.

// � melhor voc� ter que limpar algo antes de usar ou limpar ap�s usar? Bem, podemos dizer que vale o ditado "Se sujou, limpe". Por causa disso, coloquei os limpar_input (que � o __fpurge) logo ap�s o fgets e o scanf, e n�o logo antes. Dessa forma o c�digo se preocupa com a limpeza do buffer de entrada ap�s ele ser usado, e n�o antes. Por outro lado, nos casos onde n�o � poss�vel ou n�o � f�cil fazer a limpeza ap�s o uso, ent�o conv�m faz�-la antes do uso, e � por isso que coloquei o limpar_tela (que � o system("clear")) antes do primeiro printf e usei a fun��o limparBuffer que criei para limpar palavra, forca e erros antes de seus usos.

// Para o c�digo pedir apenas letras ao usu�rio, eu uso a fun��o ehLetra. Assim, se a palavra escolhida for cata-vento ou alguma outra coisa que contenha alguns s�mbolos que n�o s�o letras, isso n�o vai causar frustra��o ou problemas para o jogador.

// Na verifica��o da letra digitada, o if (!ehLetra(palavra[i])) continue; faz com que s�mbolos especiais sejam ignorados.

// O forca[i] = ehLetra(c) ? '_' : c; faz com que os s�mbolos especiais j� apare�am preenchidos quando o jogo come�ar.

// O if (ehLetra(palavra[i])) letras++; garante que apenas as letras da palavra digitada ser�o contadas.

// Para evitar frustra��o, a fun��o maiuscula � usada para converter o que o usu�rio digitar para mai�scula. A finalidade � que letras mai�sculas e min�sculas possam ser aceitas sem diferencia��o, o que � alcan�ado uma vez que a verifica��o � feita com if (maiuscula(palavra[i]) == maiuscula(tentativa)). Por outro lado, como a atribui��o ocorre com forca[i] = palavra[i];, garante-se que a grafia exibida ser� a mesma da palavra digitada, independente se o usu�rio tentou uma letra mai�scula ou min�scula.

// Ao inv�s de verificar se o jogador ganhou ou queimou uma chance usando contagem de letras, eu preferi usar as flags achou e ganhou. A cada itera��o, elas s�o definidas inicialmente como falso e verdadeiro, respectivamente. E ent�o, para cada letra n�o revelada na resposta, eu fa�o o seguinte:

// Se a letra digitada pelo usu�rio coincidir com uma letra n�o revelada, ent�o isso demonstra que ele descobriu pelo menos uma letra nova que n�o havia sido achada antes, e portanto achou passa para verdadeiro nesse caso.

// Por outro lado, se a letra digitada n�o coincidir com a letra n�o revelada, ent�o isso demonstra que h� ainda pelo menos uma letra que ainda n�o foi descoberta, e portanto o ganhou passa para falso nesse caso.

// Ao final do la�o, se ganhou for verdadeiro, ent�o eu j� declaro que o jogador ganhou. Caso contr�rio (ganhou � falso) e achou tamb�m � falso, ent�o � porque ele escolheu uma letra errada, e ent�o queima-se uma tentativa dele e tamb�m adiciona-se a letra tentada (e incorreta) no array/string erros.

// Utilizando la�os para percorrer strings assim:

// for (i = 0; palavra[i] != 0; i++)
// Eu consigo evitar ter que me preocupar com o tamanho das strings em muitos lugares.

// Para evitar que o usu�rio queime tentativas inutilmente ao digitar sem querer algo que n�o � uma letra, ou que seja uma letra que ele j� tentou, eu uso isso:

//     // Se o usu�rio digitou algo que n�o � letra, apenas insiste sem queimar uma chance.
//     if (!ehLetra(tentativa)) continue;

//     // Se o usu�rio digitou algo que ele j� tentou antes (seja errando ou acertando), apenas insiste sem queimar uma chance.
//     int jaTentou = 0;
//     for (i = 0; erros[i] != 0; i++) {
//         if (erros[i] == maiuscula(tentativa)) {
//             jaTentou = 1;
//             break;
//         }
//     }
//     if (jaTentou) continue;
//     for (i = 0; forca[i] != 0; i++) {
//         if (maiuscula(forca[i]) == maiuscula(tentativa)) {
//             jaTentou = 1;
//             break;
//         }
//     }
//     if (jaTentou) continue;
// O primeiro la�o verifica se a letra � alguma tentativa errada anterior e o segundo se � uma tentativa correta anterior (� errada j� tentada antes se estiver em algum lugar dentro de erros e correta j� tentada antes se estiver em algum lugar de forca).

// O motivo de os seus _ aparecer um embaixo do outro estava aqui:

//     for (i=0; i<letras; i++)
//     {

//         printf("\n%c ", forca[i]);
//     }
// O que faz eles aparecerem um embaixo do outro � o \n. No meu c�digo eu coloquei simplesmente isso:

//     printf("%s", forca);
// Mas se voc� preferir, pode usar isso:

//     for (i = 0; forca[i] != 0; i++) {
//         printf("%c ", forca[i]);
//     }

for nCont:=1 to 2
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChu
        cChu := UPPER(cChu)

        if cChu == "SAIR" 
            nCont := 2
        else 
            nCont := 1
            if Len(cChu) > 1
                QOUT( "insira apenas 1 letra")
                loop
            else
                if cChu $ cFoi 
                    QOUT("essa letra j� foi informada anteriormente, tente outra letra")
                    loop
                else
                    cFoi += cChu
                end if
            end if
        end if
    next
RETURN NIL
