programa
{
	
	funcao inicio()
	{
		inteiro menu = -1, meses
		cadeia espere, extrato = "", senha = "abc", pswd
		real saldo = 0, saque = 0, deposito = 0 , investimento , rendimento

    escreva("Digite sua senha: ")
    leia(pswd)
    limpa()
    enquanto(pswd != senha)
    {
    escreva("Senha invalida digite novamente: ")
    leia(pswd)
    leia(espere)
    limpa()
     
    }
    se(pswd == senha)
    {
        enquanto(menu != 0)
        {
        
        escreva("|-------------Menu-------------|\n")
        escreva("|  1-Saldo                     |\n")
        escreva("|  2-Saque                     |\n")
        escreva("|  3-Deposito                  |\n")
        escreva("|  4-Extrato                   |\n")
        escreva("|  5-Investimento              |\n")
        escreva("|  0-Sair                      |\n")
        escreva("|------------------------------|\n")
        escreva("Op��o-> ")
        leia(menu)
        limpa()

        escolha(menu)
          {
          //saldo
          caso 1:
          escreva("Saldo: R$",saldo ,"\n")
          escreva("Aperte enter para voltar ao menu \n")
          leia(espere)
          limpa()
          pare
          //saque
            caso 2:
            escreva("Digite sua senha: ")
              leia(pswd)
              se(pswd == senha)
              {
                escreva("Digite o valor do saque: R$")
              leia(saque)
              se( saldo >= saque)
              {	
                se(saque > 0)
                {
                saldo = saldo - saque
                extrato = extrato + "SAQUE -------- R$" + saque + "\n"
                escreva("Aperte enter para voltar ao menu \n")
                leia(espere)
                limpa()
                }
                senao
                {
                enquanto(saque < 0)
                {
                escreva("Digite um valor valido: R$")
                leia(saque)
                
                }
                }
              }
              senao
              {
                escreva("Saldo insuficiente deposite o dinheiro antes\n")
                escreva("Aperte enter para voltar ao menu \n")
                leia(espere)
                limpa()
              }
              
            
              }
              senao
              {
                escreva("Senha invalida\n")
              }
              pare

          //deposito
                caso 3:
                escreva("Digite sua senha: ")
                leia(pswd)
                se(pswd == senha)
                {
                  escreva("Digite o valor do deposito: R$")
                  leia(deposito)
                  se(deposito > 0)
                  {
                    saldo = saldo + deposito
                    extrato = extrato + "DEPOSITO -------- R$" + deposito + "\n"
                    escreva("Aperte enter para voltar ao menu \n")
                    leia(espere)
                    limpa()
                  }
                  senao
                  {
                    enquanto(deposito < 0)
                    {
                    escreva("Digite um valor valido: R$")
                    leia(deposito)
                    }
                    saldo = saldo + deposito
                    escreva("Aperte enter para voltar ao menu \n")
                    leia(espere)
                    limpa()
              
                  }
                }

                senao
                {
                  escreva("Senha invalida\n")
                }
            
            
            pare
          //extrato
          caso 4:
          escreva("Digite sua senha: ")
          leia(pswd)
          se(pswd == senha)
          {
            escreva(extrato)
            escreva("\nAperte enter para voltar ao menu \n")
                leia(espere)
                limpa()
          }
          senao
          {
            escreva("Senha invalida")
          }
          pare

          //Investimento
          caso 5:
          escreva("Digite sua senha: ")
          leia(pswd)
          se(pswd == senha)
          {
            escreva("Digite o valor que deseja investir: ")
            leia(investimento)
            se(investimento > saldo){
              escreva("saldo insuficiente! \n")
              escreva("Aperte enter pra voltar ao menu")
              leia(espere)
              limpa()
            } 
            senao {
            escreva("Digite a quantidade de meses que voc� deseja investir: ")
            leia(meses)
            para(inteiro contador = 0; contador < meses ; contador++)
            {
              rendimento = investimento * 1.02
              investimento = rendimento
            }
            saldo = saldo + investimento
            escreva(meses, " meses se passaram e o rendimento final foi de R$" , investimento, ", Parabens\n")
            escreva("Aperte enter para voltar ao menu")
            leia(espere)
            limpa()
            
            }
          
          }

        senao
          {
            escreva("Senha invalida")
          }
          pare
          



          //sair
          caso 0:
          
          pare
          
          
          
          }

        }
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1933; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */