Algoritmo "Forca"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Roonie 
// Descrição   : Jogo da Forca
// Autor(a)    : Rafael Nogueira Mattos
// Data atual  : 28/05/2020
Var
// Seção de Declarações das variáveis
   //Modo de Jogo 2
   palavra, letratent: caractere
   letras, letrasesc: vetor[1..20] de caractere
   tamletratent, selecj, esclhv, modojogo, cont1, cont2, cont3, cont4, tampalavra, erros, tentativas, acerto, acertos: inteiro
   //Modo de Jogo 1
   palavras, letras2, letrasesc2: vetor[1..20] de caracter
   tamletratent2, nmraleat, cont5, cont6, cont7, cont8, tampalavra2, erros2, tentativas2, acerto2, acertos2: inteiro
   palavra2, letratent2: caracter
   temas: vetor[1..11] de caracter
   
   //Dos dois
   letters: vetor[1..23] de caracter
   lettercont: inteiro
   acesso: inteiro
   bloqueio: inteiro
   letrastentadas: inteiro
   posicao: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   esclhv <- 0
   selecj <- 0
   tampalavra <- 0
   modojogo <- 0
   

    //Modo jogo 1
   cont1 <- 1
   erros <- 0
   cont2 <- 1
   cont3 <- 1
   cont4 <- 1
   acerto <- 0
   nmraleat <- 0
   
   //Modo jogo 2
   cont5 <- 1
   cont6 <- 1
   cont7 <- 1
   cont8 <- 1
   erros2 <- 0
   acerto2 <- 0
   acertos2 <- 0
   
   //Dos dois
   

   


   timer(400)
   
   //BANNER JOGO
   escreval("  ______   ______     ______     ______     ______ ")
   escreval(" /\  ___\ /\  __ \   /\  == \   /\  ___\   /\  __ \  ")
   escreval(" \ \  __\ \ \ \/\ \  \ \  __<   \ \ \____  \ \  __ \  ")
   escreval("  \ \_\    \ \_____\  \ \_\ \_\  \ \_____\  \ \_\ \_\ ")
   escreval("   \/_/     \/_____/   \/_/ /_/   \/_____/   \/_/\/_/ ")
   timer(0)
   escreval("")
   enquanto (selecj > 3) ou (selecj < 1)  faca
      escreval(" --------------------1>  JOGAR  ---------------------")
      escreval(" --------------------2>Como Jogar--------------------")
      escreval(" --------------------3>  SAIR   ---------------------")
      escreva(">>>>>>>>")
      leia (selecj)
   fimEnquanto
   
   //2 - Como Jogar
   se selecj = 2 entao
      limpatela
      enquanto esclhv <> 1 faca
         escreval("Modo de Escolher palavra para jogar sem ver a Palavra")
         escreval("Modo escrever a Palavra onde sabe quem escreve")
         escreval("1-VOLTAR")
         escreva(">>>>>")
         leia(esclhv)
         limpatela
         
      fimenquanto
      
            //Após como Jogar
            timer(400)
            escreval("  ______   ______     ______     ______     ______ ")
            escreval(" /\  ___\ /\  __ \   /\  == \   /\  ___\   /\  __ \  ")
            escreval(" \ \  __\ \ \ \/\ \  \ \  __<   \ \ \____  \ \  __ \  ")
            escreval("  \ \_\    \ \_____\  \ \_\ \_\  \ \_____\  \ \_\ \_\ ")
            escreval("   \/_/     \/_____/   \/_/ /_/   \/_____/   \/_/\/_/ ")
            timer(0)
            escreval("")
            enquanto (selecj <> 1) e (selecj <> 3) faca
               escreval(" --------------------1>  JOGAR  ---------------------")
               escreval(" --------------------3>  SAIR   ---------------------")
               escreva(">>>>>>>>")
               leia (selecj)
            fimEnquanto
            
   fimse
   
   se selecj = 3 entao
         fimalgoritmo
   fimSe
   
   //1 - Jogar
   se selecj = 1 entao
      limpatela
      //Modos de Jogo
      timer(400)
      escreval("  ______   ______     ______     ______     ______ ")
      escreval(" /\  ___\ /\  __ \   /\  == \   /\  ___\   /\  __ \  ")
      escreval(" \ \  __\ \ \ \/\ \  \ \  __<   \ \ \____  \ \  __ \  ")
      escreval("  \ \_\    \ \_____\  \ \_\ \_\  \ \_____\  \ \_\ \_\ ")
      escreval("   \/_/     \/_____/   \/_/ /_/   \/_____/   \/_/\/_/ ")
      escreval("                                                      ")
      timer(0)
      enquanto (modojogo <> 1) e (modojogo <> 2) faca
         escreval("Modo de Jogo (1) : Palavra aleatória de banco de palavras")
         escreval("Modo de Jogo (2) : Palavra digitada pelo Usuário")
         escreval("1 ou 2 ?")
         escreva(">>>>>>")
         leia(modojogo)
      fimEnquanto
      
      //Modo de Jogo 1
      se modojogo = 1 entao
            limpatela

            palavras[1] <- "bacalhau"
            palavras[2] <- "cachimbo"
            palavras[3] <- "educativo"
            palavras[4] <- "fascinante"
            palavras[5] <- "gabinete"
            palavras[6] <- "hamburguer"
            palavras[7] <- "ideologia"
            palavras[8] <- "quadrilha"
            palavras[9] <- "vademecum"
            palavras[10] <- "javascript"
            palavras[11] <- "abacaxi"
            
            temas[1] <- "Peixes"
            temas[2] <- "Utensílio para Fumar"
            temas[3] <- "Para ensinar"
            temas[4] <- "Adjetivo"
            temas[5] <- "Peça Computador"
            temas[6] <- "Comida"
            temas[7] <- "Tipo de Ciência"
            temas[8] <- "Tipo de Bando"
            temas[9] <- "Livro"
            temas[10] <- "Programação"
            temas[11] <- "Fruta"

            nmraleat <- randi(11)

            se nmraleat = 0 entao
               enquanto nmraleat = 0 faca
                        nmraleat <- randi(11)
               fimEnquanto
            fimse
            
            palavra2 <- palavras[nmraleat]
            

            //Tamanho da Palavra
            tampalavra2 <- compr(palavra2)

            enquanto cont5 <= tampalavra2 faca
                     letrasesc2[cont5] <- "__ "
                     cont5 <- cont5 + 1
            fimEnquanto
            
      
            //Divisor de Letras
            enquanto cont6 <= tampalavra2 faca
                     letras2[cont6] <- copia(palavra2;cont6;1)
                     cont6 <- cont6 + 1
            fimenquanto
            
      
            enquanto erros2 <= 5 faca
                     acerto2 <- 0
                     lettercont <- 1
                     acesso <- 0
                     bloqueio <- 0
                     tamletratent2 <- 0

                     enquanto lettercont <= posicao faca
                              escreva(letters[lettercont], " ")
                              lettercont <- lettercont + 1
                     fimEnquanto
                     
                     escreval("")

                     escreval("+---+", "                  ", temas[nmraleat])
                     escreval("|   |")
                     escreval("|   ")
                     se erros2 = 1 entao
                        escreval("|   O")
                     fimse
                           se erros2 = 2 entao
                           escreval("|   O")
                           escreval("|  /|\")
                           fimse
                              se erros2 = 3 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              escreval("|   |")
                              fimse
                                 se erros2 = 4 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 escreval("|   |")
                                 fimse
                                    se erros2 = 5 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    escreval("|  /\")
                                    fimse

                     escreval("|    ")
                     escreval("|    ")
                     escreval("|    ")



                     //Espaços em Branco e da Palavra
                     enquanto cont7 <= tampalavra2 faca
                              escreva(letrasesc2[cont7], "  ")
                              cont7 <- cont7 + 1
                     fimEnquanto
                     escreval("")
                     escreva(">>>>>")
                     leia(letratent2)//Entrada de Letra
                     
                     tamletratent2 <- compr(letratent2)
                     
                     
                     //Verificador de Letras para Imprimir
                     lettercont <- 1
                     enquanto lettercont <= 23 faca
                              se letratent2 = letters[lettercont] entao
                                 bloqueio <- 1
                                 senao
                                      acesso <- 1
                              fimSe
                              lettercont <- lettercont + 1
                     fimEnquanto
                     
                     se (acesso = 1) e (bloqueio <> 1) entao
                        posicao <- posicao + 1
                        letters[posicao] <- letratent2
                     fimse



                     //Verificador de Letras
                     enquanto cont8 <= tampalavra2 faca
                              se letratent2 = letras2[cont8] entao
                                 acerto2 <- acerto2 + 1
                                 letrasesc2[cont8] <- letratent2
                              fimse
                              cont8 <- cont8 + 1
                     fimenquanto
                     
                     //Verificador se a Pessoa Acertou
                     se (acerto2 <> 0) e (bloqueio <> 1) entao
                        acertos2 <- acertos2 + acerto2
                     fimse


                     //Verificador se a Pessoa Errou
                     se (acerto2 = 0) e (tamletratent2 = 1) entao
                        erros2 <- erros2 + 1
                     fimse


                     //Fim de Jogo VITORIA
                     se acertos2 = tampalavra2 entao
                        limpatela
                           timer(200)
                           escreval("__________________________________________")
                           escreval("      ___                       ___       ")
                           escreval("     /__/\        ___          /__/\      ")
                           escreval("    _\_ \:\      /  /\         \  \:\     ")
                           escreval("   /__/\ \:\    /  /:/          \  \:\    ")
                           escreval("  _\_ \:\ \:\  /__/::\      _____\__\:\   ")
                           escreval(" /__/\ \:\ \:\ \__\/\:\__  /__/::::::::\  ")
                           escreval(" \  \:\ \:\/:/    \  \:\/\ \  \:\~~\~~\/  ")
                           escreval("  \  \:\ \::/      \__\::/  \  \:\  ~~~   ")
                           escreval("   \  \:\/:/       /__/:/    \  \:\       ")
                           escreval("    \  \::/        \__\/      \  \:\      ")
                           escreval("     \__\/                     \__\/      ")
                           escreval("__________________________________________")

                        cont7 <- 1

                        enquanto cont7 <= tampalavra2 faca
                           escreva(letrasesc2[cont7], "  ")
                           cont7 <- cont7+1
                        fimEnquanto
                        
                        escreval (" ")
                        escreval ("Numero de erros >>> ", erros2)
                        fimAlgoritmo
                     fimse

                     //Fim de Jogo DERROTA
                     se erros2 = 5 entao
                        limpatela
                        timer(200)
                        escreval("____________________________________________")
                        escreval("    ____           ____                 __  ")
                        escreval("   / __ \  ___    / __/  ___   ____ _  / /_ ")
                        escreval("  / / / / / _ \  / /_   / _ \ / __ `/ / __/ ")
                        escreval(" / /_/ / /  __/ / __/  /  _/ / /_/ / / /_   ")
                        escreval("/_____/  \___/ /_/     \___/ \__,_/  \__/   ")
                        escreval("____________________________________________")


                        escreval("+---+")
                        escreval("|   |")
                        escreval("|   ")
                        se erros2 = 1 entao
                           escreval("|   O")
                           fimse
                              se erros2 = 2 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              fimse
                                 se erros2 = 3 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 fimse
                                    se erros2 = 4 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    fimse
                                       se erros2 = 5 entao
                                       escreval("|   O")
                                       escreval("|  /|\")
                                       escreval("|   |")
                                       escreval("|   |")
                                       escreval("|   /\")
                                       fimse

                        escreval("|    ")
                        escreval("|    ")
                        escreval("|    ")
                        
                        escreval ("Sua quantidade de Erros é 5")


                        fimAlgoritmo

                     fimSe

                     cont7 <- 1
                     cont8 <- 1

                     limpatela

            fimEnquanto
      fimSe







      

      //Modo de Jogo 2
      se modojogo = 2 entao
            limpatela
            escreval("Digite a Palavra")
            escreva(">>>>>")
            leia(palavra)
            
            limpatela
            
            
            //Tamanho da Palavra
            tampalavra <- compr(palavra)
            
            enquanto cont4 <= tampalavra faca
                     letrasesc[cont4] <- "__ "
                     cont4 <- cont4 + 1
            fimEnquanto
            
            
            
            

            //Divisor de Letras
            enquanto cont1 <= tampalavra faca
                     letras[cont1] <- copia(palavra;cont1;1)
                     cont1 <- cont1 + 1
            fimenquanto
            
            
            

            //Forca
            enquanto erros <= 5 faca
                     acerto <- 0
                     lettercont <- 1
                     acesso <- 0
                     bloqueio <- 0
                     tamletratent <- 0
                     
                     enquanto lettercont <= posicao faca
                              escreva(letters[lettercont], " ")
                              lettercont <- lettercont + 1
                     fimEnquanto

                     escreval("")
                     escreval("+---+")
                     escreval("|   |")
                     escreval("|   ")
                     se erros = 1 entao
                        escreval("|   O")
                        fimse
                           se erros = 2 entao
                           escreval("|   O")
                           escreval("|  /|\")
                           fimse
                              se erros = 3 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              escreval("|   |")
                              fimse
                                 se erros = 4 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 escreval("|   |")
                                 fimse
                                    se erros = 5 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    escreval("|  /\")
                                    fimse

                     escreval("|    ")
                     escreval("|    ")
                     escreval("|    ")



                     //Espaços em Branco e da Palavra
                     enquanto cont2 <= tampalavra faca
                              escreva(letrasesc[cont2], "  ")
                              cont2 <- cont2+1
                     fimEnquanto
                     escreval("")
                     escreva(">>>>>")
                     leia(letratent)//Entrada de Letra
                     
                     tamletratent <- compr(letratent)
                     
                     
                     //Verificador de Letras para Imprimir
                     lettercont <- 1
                     enquanto lettercont <= 23 faca
                              se letratent = letters[lettercont] entao
                                 bloqueio <- 1
                                 senao
                                      acesso <- 1
                              fimSe
                              lettercont <- lettercont + 1
                     fimEnquanto

                     se (acesso = 1) e (bloqueio <> 1) entao
                        posicao <- posicao + 1
                        letters[posicao] <- letratent
                     fimse
                     
                     
                     //Verificador de Letras
                     enquanto cont3 <= tampalavra faca
                              se letratent = letras[cont3] entao
                                 acerto <- acerto + 1
                                 letrasesc[cont3] <- letratent
                              fimse
                              cont3 <- cont3 + 1
                     fimenquanto
                     
                     //Verificador se a Pessoa Acertou
                     se (acerto <> 0) e (bloqueio <> 1) entao
                        acertos <- acertos + acerto
                     fimse
                     
                     

                     //Verificador se a Pessoa Errou
                     se (acerto = 0) e (tamletratent = 1) entao
                        erros <- erros + 1
                     fimse
                     
                     
                     //Fim de Jogo VITORIA
                     se acertos = tampalavra entao
                        limpatela
                        timer(200)
                        escreval("__________________________________________")
                        escreval("      ___                       ___       ")
                        escreval("     /__/\        ___          /__/\      ")
                        escreval("    _\_ \:\      /  /\         \  \:\     ")
                        escreval("   /__/\ \:\    /  /:/          \  \:\    ")
                        escreval("  _\_ \:\ \:\  /__/::\      _____\__\:\   ")
                        escreval(" /__/\ \:\ \:\ \__\/\:\__  /__/::::::::\  ")
                        escreval(" \  \:\ \:\/:/    \  \:\/\ \  \:\~~\~~\/  ")
                        escreval("  \  \:\ \::/      \__\::/  \  \:\  ~~~   ")
                        escreval("   \  \:\/:/       /__/:/    \  \:\       ")
                        escreval("    \  \::/        \__\/      \  \:\      ")
                        escreval("     \__\/                     \__\/      ")
                        escreval("__________________________________________")

                        cont2 <- 1
                        
                        enquanto cont2 <= tampalavra faca
                           escreva(letrasesc[cont2], "  ")
                           cont2 <- cont2+1
                        fimEnquanto
                        escreval ("")
                        escreval ("Numero de erros >>> ", erros)
                        fimAlgoritmo
                     fimse
                     
                     //Fim de Jogo DERROTA
                     se erros = 5 entao
                        limpatela
                        timer(200)
                        escreval("____________________________________________")
                        escreval("    ____           ____                 __  ")
                        escreval("   / __ \  ___    / __/  ___   ____ _  / /_ ")
                        escreval("  / / / / / _ \  / /_   / _ \ / __ `/ / __/ ")
                        escreval(" / /_/ / /  __/ / __/  /  _/ / /_/ / / /_   ")
                        escreval("/_____/  \___/ /_/     \___/ \__,_/  \__/   ")
                        escreval("____________________________________________")
                        escreval ("GAME OVER!")

                        escreval("+---+")
                        escreval("|   |")
                        escreval("|   ")
                        se erros = 1 entao
                           escreval("|   O")
                           fimse
                              se erros = 2 entao
                              escreval("|   O")
                              escreval("|  /|\")
                              fimse
                                 se erros = 3 entao
                                 escreval("|   O")
                                 escreval("|  /|\")
                                 escreval("|   |")
                                 fimse
                                    se erros = 4 entao
                                    escreval("|   O")
                                    escreval("|  /|\")
                                    escreval("|   |")
                                    escreval("|   |")
                                    fimse
                                       se erros = 5 entao
                                       escreval("|   O")
                                       escreval("|  /|\")
                                       escreval("|   |")
                                       escreval("|   |")
                                       escreval("|   /\")
                                       fimse

                        escreval("|    ")
                        escreval("|    ")
                        escreval("|    ")
                        escreval ("Sua quantidade de Erros é 5")


                        fimAlgoritmo
                        
                     fimSe
                     
                     cont2 <- 1
                     cont3 <- 1

                     limpatela

            fimEnquanto
      fimSe
Fimalgoritmo