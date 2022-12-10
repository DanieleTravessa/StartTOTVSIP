/*62.Jogo da forca - parte 1: Neste momento trataremos apenas da leitura do palpite (“chute”) do usuário. 
Fazer um programa que realize a consistência de entrada da digitação de um palpite do usuário de modo que 
ele seja forçado a digitar uma letra efetivamente. 
Fazer 3 versões do programa, cada uma com uma das estruturas de repetição. 
Responder: qual achou mais adequada? Por quê? 
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

//         // Se o usuário digitou algo que não é letra, apenas insiste sem queimar uma chance.
//         if (!ehLetra(tentativa)) continue;

//         // Se o usuário digitou algo que ele já tentou antes (seja errando ou acertando), apenas insiste sem queimar uma chance.
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
// As mudanças que eu fiz foram:

// Estou desenvolvendo em um ambiente windows. Por causa disso, para mim ao invés de usar __fpurge, devo usar fflush e ao invés de system("clear"), uso system("cls"). Para resolver esse problema, eu uso o seguinte bloco:

// #if defined(__MINGW32__) || defined(_MSC_VER)
// #define limpar_input() fflush(stdin)
// #define limpar_tela() system("cls")
// #else
// #include <stdio_ext.h>
// #define limpar_input() __fpurge(stdin)
// #define limpar_tela() system("clear")
// #endif
// De forma que daí eu tenho as macros limpar_input e limpar_tela definidas para a chamada correta independente do ambiente de compilação.

// Tal como mencionado em um comentário pelo Pablo, usar o fflush(stdin) é em geral comportamento indefinido. Entretanto, no windows (que não tem o __fpurge), ele é definido. Esse #if garante também que o fflush(stdin) não será usado em um ambiente que não seja o windows.

// Esse trecho de código não faz o que você quer:

// forca[i] == tentativa;
// Observe que você usou o igual duplo ao invés do igual simples!

// A sua lógica tinha alguns sérios problemas: Era possível usar várias vezes a mesma letra sem queimar tentativas, bagunçando com o j e podendo ganhar sem achar todas as letras; letras maiúsculas eram consideradas diferentes de minúsculas e palavras que contivessem símbolos que não fossem letras (em especial _) podiam fazer o jogo não ficar jogável. Na minha nova lógica, esses problemas são resolvidos.

// Evite usar printf com parâmetros a mais não usados, tal como aqui:

// printf("\nParabens, voce acertou a palavra ", chances, letras);
// Tente declarar as variáveis no menor escopo possível. Variáveis globais devem ser evitadas sempre que possível. Consegui transformar tentativa, i, j, chances e letras em variáveis locais. A variável cont foi eliminada.

// Não declare uma função com o tipo de retorno int se você não retorna nada dela. Neste caso use void.

// Não há nada de errado em usar aritmética de ponteiros, mas é uma coisa que é bom ser evitada, uma vez que é uma das coisas que fazem com que seja muito fácil fazer besteiras em C. Por causa disso eu reescrevi a sua função trimEnd para não usar aritmética de ponteiros.

// É melhor você ter que limpar algo antes de usar ou limpar após usar? Bem, podemos dizer que vale o ditado "Se sujou, limpe". Por causa disso, coloquei os limpar_input (que é o __fpurge) logo após o fgets e o scanf, e não logo antes. Dessa forma o código se preocupa com a limpeza do buffer de entrada após ele ser usado, e não antes. Por outro lado, nos casos onde não é possível ou não é fácil fazer a limpeza após o uso, então convém fazê-la antes do uso, e é por isso que coloquei o limpar_tela (que é o system("clear")) antes do primeiro printf e usei a função limparBuffer que criei para limpar palavra, forca e erros antes de seus usos.

// Para o código pedir apenas letras ao usuário, eu uso a função ehLetra. Assim, se a palavra escolhida for cata-vento ou alguma outra coisa que contenha alguns símbolos que não são letras, isso não vai causar frustração ou problemas para o jogador.

// Na verificação da letra digitada, o if (!ehLetra(palavra[i])) continue; faz com que símbolos especiais sejam ignorados.

// O forca[i] = ehLetra(c) ? '_' : c; faz com que os símbolos especiais já apareçam preenchidos quando o jogo começar.

// O if (ehLetra(palavra[i])) letras++; garante que apenas as letras da palavra digitada serão contadas.

// Para evitar frustração, a função maiuscula é usada para converter o que o usuário digitar para maiúscula. A finalidade é que letras maiúsculas e minúsculas possam ser aceitas sem diferenciação, o que é alcançado uma vez que a verificação é feita com if (maiuscula(palavra[i]) == maiuscula(tentativa)). Por outro lado, como a atribuição ocorre com forca[i] = palavra[i];, garante-se que a grafia exibida será a mesma da palavra digitada, independente se o usuário tentou uma letra maiúscula ou minúscula.

// Ao invés de verificar se o jogador ganhou ou queimou uma chance usando contagem de letras, eu preferi usar as flags achou e ganhou. A cada iteração, elas são definidas inicialmente como falso e verdadeiro, respectivamente. E então, para cada letra não revelada na resposta, eu faço o seguinte:

// Se a letra digitada pelo usuário coincidir com uma letra não revelada, então isso demonstra que ele descobriu pelo menos uma letra nova que não havia sido achada antes, e portanto achou passa para verdadeiro nesse caso.

// Por outro lado, se a letra digitada não coincidir com a letra não revelada, então isso demonstra que há ainda pelo menos uma letra que ainda não foi descoberta, e portanto o ganhou passa para falso nesse caso.

// Ao final do laço, se ganhou for verdadeiro, então eu já declaro que o jogador ganhou. Caso contrário (ganhou é falso) e achou também é falso, então é porque ele escolheu uma letra errada, e então queima-se uma tentativa dele e também adiciona-se a letra tentada (e incorreta) no array/string erros.

// Utilizando laços para percorrer strings assim:

// for (i = 0; palavra[i] != 0; i++)
// Eu consigo evitar ter que me preocupar com o tamanho das strings em muitos lugares.

// Para evitar que o usuário queime tentativas inutilmente ao digitar sem querer algo que não é uma letra, ou que seja uma letra que ele já tentou, eu uso isso:

//     // Se o usuário digitou algo que não é letra, apenas insiste sem queimar uma chance.
//     if (!ehLetra(tentativa)) continue;

//     // Se o usuário digitou algo que ele já tentou antes (seja errando ou acertando), apenas insiste sem queimar uma chance.
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
// O primeiro laço verifica se a letra é alguma tentativa errada anterior e o segundo se é uma tentativa correta anterior (é errada já tentada antes se estiver em algum lugar dentro de erros e correta já tentada antes se estiver em algum lugar de forca).

// O motivo de os seus _ aparecer um embaixo do outro estava aqui:

//     for (i=0; i<letras; i++)
//     {

//         printf("\n%c ", forca[i]);
//     }
// O que faz eles aparecerem um embaixo do outro é o \n. No meu código eu coloquei simplesmente isso:

//     printf("%s", forca);
// Mas se você preferir, pode usar isso:

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
                    QOUT("essa letra já foi informada anteriormente, tente outra letra")
                    loop
                else
                    cFoi += cChu
                end if
            end if
        end if
    next
RETURN NIL
