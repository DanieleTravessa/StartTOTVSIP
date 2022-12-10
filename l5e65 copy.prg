programa

	   
	funcao inicio()
			jogo()
	
	funcao jogo()
	
		indice, auxiliar, tamanho
		cadeia entrada
		cadeia linha, letra,formar_palavra[100] 
		logico acertou, repetiu
		inteiro acertos,erros
		inteiro arquivo = arq.abrir_arquivo("./jogo.txt", arq.MODO_LEITURA)
		
		linha = arq.ler_linha(arquivo)
		tamanho = ut.numero_elementos(formar_palavra)
		acertos = tamanho
		erros = 6
		
		para(arquivo = 0; arquivo < tamanho; arquivo++)
		
			formar_palavra[arquivo]= "_" 
				
		enquanto (acertos > 0 e erros >0)
			escreva("\nDigite Uma Letra","\nSuas tentativas restantes são:",erros)
		
		para (arquivo = 0; arquivo < tamanho; arquivo++)
		
			escreva(formar_palavra[arquivo])
				
		escreva(" :")
		leia(letra)
		
		acertou = falso
		repetiu = falso
		
		para(arquivo = 0; arquivo < tamanho; arquivo++)
		
			se(letra == formar_palavra[arquivo])
			
				se(formar_palavra[arquivo] == letra)
				
					repetiu = verdadeiro
				
		
				acertou = verdadeiro
				formar_palavra[arquivo] = letra
				acertos--            
			
		
	
		se(repetiu == verdadeiro)
		
			escreva("\nVocê ja digitou essa letra\n\n")
		
		senao se(acertou == verdadeiro)
		
			escreva("\nVocê acertou continue !!!\n\n")
		
		senao
		
			erros--
			escreva("\nVocê errou tente novamente\n\n")
		
		
		se(acertos == 0)
		
			escreva("\nParabéns você acertou a palavra '-' ")
			para(arquivo = 0; arquivo < tamanho; arquivo++)
		
				escreva(formar_palavra[arquivo])
			
		
		
		ELSE(erros == 0)
		
			?"Que pena não foi dessa vez tente a sorte novamente"


	   
//INICIANDO VARIAVEIS GLOBAIS
		i = 0 //contador geral
		c = 0 //contador da coluna da matriz
		l = -1 //contador da linha da matriz
		np = 0 //contador que ira indicar quantas palavaras foram armazenadas
		p = 0 //contador para definir a posição da próxima palavra no vetor
		t=0 //contador para definir a posição da tentativa no vetor
		start = falso //inicia como falso até o jogador informar que deseja iniciar
		gameStart = verdadeiro
		escolhaD = verdadeiro
		vResp2 = verdadeiro
		vResp1 = verdadeiro

		/* LAÇO QUE IRA LER O ARQUIVO ATÉ O FINAL, SEPARAR AS PALAVRAS DAS DICAS E ARMAZENAR EM ARRAY E MATRIZ */
		bd = bdPalavras.abrir_arquivo(bdDiretorio,bdPalavras.MODO_LEITURA) //Abre o arquivo no modo leitura

		// Este laço ira ler o arquivo até o final e armazenar em uma variavel do tipo cadeia
		enquanto(nao bdPalavras.fim_arquivo(bd)) {
		 	arquivo[i] = bdPalavras.ler_linha(bd) //a variavel arquivo irá armazenar todas as linhas do arquivo txt
		 	//O programa irá ler o primeiro caracter de cada linha, se iniciar "P" será armazenado em um array
			se (arquivo[i] != "") { //O programa verifica se a linha não está vazia
				se(tx.obter_caracter(arquivo[i], 0) == 'P') { //se a linha do arquivo txt começar com a letra "P", ele entende que é uma palavra
					palavras[p] = arquivo[i] //armazena a palavra na váriavel correspondente
					palavras[p] = tx.caixa_alta(palavras[p]) //coloca todos os carcateres da palavra em maiusculo
					l++ //Cada palavra lida adicionamos +1 na variavel l, que ira definir qual a próxima linha da matriz
					c=0 //Toda vez que o programa le uma palavra ele zera o contador da coluna
					np++ //Cada palavra que o programa ler, irá acrescentar +1 neste contador, assim saberemos quantas palavras temos
					p++ //Esse contador informa a posição da próxima palavra
				} senao { //caso a linha não comece com a letra 'P', ele entende que é uma dica e armazena na matriz
		 			matriz[l][c] = arquivo[i] //salva as dicas na matriz
		 			c++ //após cada dica é realizado um incremento para definir qual a próxima coluna
		 		}
				i++ //este contator realiza o laço "enquanto" para que assim leia todas as linhas do arquivo
			}
		 } //fim do laço de leitura do arquivo txt

		//FECHA O ARQUIVO
		bdPalavras.fechar_arquivo(bd)

		boasVindas() //Exibe a primera tela com informações do jogo

		/* FUNÇÃO PRINCIPAL DO JOGO
		 *  Dentro dos laços estára todas as funções do jogo		
		 *  Quando o jogador perde ou ganha volta pare este laço, onde é perguntado se ele deseja coninuar jogando
		*/
		enquanto (gameStart == verdadeiro) {
			dificuldadef = 0 //zera o valor da dificuldade do jogo
			/* LAÇO DE VALIDAÇÃO DA RESPOSTA SE O JOGADOR DESEJA INICIAR O JOGO */
			enquanto (vResp1 == verdadeiro){
				/*	ENTRADA DE DADOS	*/
				escreva ("(/¯? ? ?)/¯ Deseja iniciar o jogo? Digite 'S' para SIM e 'N' para NÃO: ")
				leia (iniciar)
				//LAÇO DE VALIDAÇÃO DA RESPOSTA
				se (tx.numero_caracteres(iniciar) != 1) { //verifica se o jogador informou apenas uma letra
					escreva ("Você deve informar apenas a letra 'S' ou 'N'\n\n")
					escreva ("Digite qualquer tecla para continuar ")
					leia (qualquer)
				} senao {
					iniciar = tx.caixa_alta(iniciar) //Convertemos a letra digitada para maiuscula
					resp = tp.cadeia_para_caracter(iniciar) //Converte para caracter e armazena em outra variavel	
					se (resp != 'S') { //verifica se a letra digitada é diferente de 'S'
						se (resp == 'N') { // se for igual a 'N' finaliza o jogo
							//deixa todos os valores lógicos como falso para não iniciar nenhum laço do jogo e finalizar o programa
							escolhaD = falso
							start = falso
							vResp1 = falso
							vResp2 = falso
							gameStart = falso
							pare //finaliza o laço
						} senao { //se a letra for diferente se 'S' ou 'N' pede para que digite novamete
							escreva ("Você deve informar apenas a letra 'S' ou 'N'\n\n")
							escreva ("Digite qualquer tecla para continuar ")
							start = falso
							escreva ("\n")
						}
					} senao {vResp1 = falso}
				}//fim do laço da validação da resposta
			}
			/* LAÇO QUE DEFINI A DIFICULDADE DO JOGO */
			enquanto (escolhaD == verdadeiro) {
				limpa() //limpa a tela
				dificuldade() //Exibe as instruções sobre a escolha da dificuldade
				leia(tempoE) //recebe a escolha do jogador da dificuldade
				//VALIDAÇÃO DA ESCOLHA DA DIFICULDADE
				se (tx.numero_caracteres(tempoE) != 1) { //verifica se o valor informado é diferente de 1 caracter, ou seja, se tem mais de um caracter
					escreva ("\nVocê deve informar apenas um número entre '1' e '3'\n\n")
					escreva ("Digite qualquer tecla para continuar ")
					leia (qualquer)
					escreva ("\n")
					start = falso
				} senao { //caso não tenha mais que um caracter, continua realizando as validações
					tempoE = tx.caixa_alta(tempoE) //transforma o valor informado em caixa alta
					tempoC = tp.cadeia_para_caracter(tempoE) //converte para caracter
					se (tempoC >= 'A' e tempoC <= 'Z') { //se o valor informado estiver entre A e Z, significa que o jogador não inseriu o número correto da dificuldade
						escreva ("\nVocê deve informar um número entre 1 e 3, de acordo com\n")
						escreva ("a dificuldade que deseja.\n\n")
						escreva ("Digite qualquer tecla para continuar ")
						leia(qualquer)
						start = falso
						escreva ("\n")
					} senao { //se o valor não for uma letra continua as validações
						qtempo = tp.cadeia_para_inteiro(tempoE, 10) //converte o valor para inteiro
						respd = tp.inteiro_para_caracter(qtempo) //converte o inteiro para caracter
						se (respd == '1' ou respd == '2' ou respd == '3') { //se o valor informado estiver entre 1 e 3 ele salva na variavel dificuldade
							dificuldadef = tempo(qtempo)
							escolhaD = falso
							start = verdadeiro
						}senao { //se o valor informado não estiver entre 1 e 3, o jogo retorta erro e pergunta se deseja jogar novamente.
							escreva ("\nVocê deve informar um número entre 1 e 3, de acordo com\n")
							escreva ("a dificuldade que deseja.\n\n")
							escreva ("Digite qualquer tecla para continuar ")
							leia(qualquer)
							start = falso
						}
					}
				}				
				}
			/*INICIO DAS FUNÇÕES DO JOGO*/
			enquanto (start == verdadeiro){
					//zera as variaveis usadas no jogo, para que, por exemplo: a cada partida não some com os erros da partida anterior
					erros = 1 
					dica = 1	
					vida = 5	
					t = 0
					acabouD = falso			
								
					/*	SORTEIO DA PALAVRA	*/
					n = u.sorteia(0, (np-1)) //O programa ira sortear um número de 0 até a quantidade de palavras que temos armazenadas
					psorteio = palavras[n] //O programa ira armazenar a palavra que está na posição do número sorteado
			
					/*	TRATAMENTO TA PALAVRA SORTEADA	*/
					pfiltro = filtro(psorteio) //a variavel recebe a palavra sorteada já sem os caracteres 'P:'
					tpf = tx.numero_caracteres(pfiltro) //calcula a quantidade correta de caracteres da palavra
	
					//ARMAZENA A QUANTIDADE DE TRAÇOS NA VARIAVEL QUE IRA EXIBIR NA TELA OS TRAÇOS E LETRAS ACERTADAS
					para (i=0;i<tpf;i++) {
						formacao[i] = '_' //salva o traço em cada posição do array
						forma[i] = tx.obter_caracter(pfiltro, i) //armazena cada letra em um array				
					}
	
					/*	ZERA AS TENTATIVAS		
					 * 	ao inicializar um nova partida, o programa apaga todas as tentativas da partida anterior
					*/
					para (i=0;i<30;i++) {
						tentativas[i] = ' '		
					}
