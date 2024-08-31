programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() 
  {
    //Declaração das Variáveis
    real saldo = 0, deposito, saque, investir
    cadeia loop, senha = "", pswd = "", extrato = ""
    inteiro input, mes

    enquanto(input != 0)
    {
      escreva("|------------Menu------------|\n")
      escreva("| Saldo -> R$", mat.arredondar(saldo, 2), "\n")
      escreva("| 1-Deposito                 |\n")   
      escreva("| 2-Saque                    |\n")
      escreva("| 3-Extrato                  |\n")
      escreva("| 4-Investimento             |\n")
      escreva("| 0-Sair                     |\n")
      escreva("|------------Menu------------|\n")

      escreva("Selecione uma das opções: ")
      leia(input)
      limpa()
      
      escolha(input)
      {
        //Deposito
        caso 1:
 
         escreva("Digite a sua senha: ")
         leia(pswd)
         limpa()
 
         enquanto(pswd != senha)
         {
           escreva("Senha errada, tente novamente: ")
           leia(pswd)
           limpa()
         }
 
         escreva("Digite o valor que deseja depositar: ")
         leia(deposito)
         limpa()
 
         enquanto(deposito < 0)
         {
           escreva("Digite um valor valido: ")
           leia(deposito)
           limpa()
         }
 
         saldo = saldo + deposito
         extrato = extrato + "--DEPOSITO--\n" + "R$" + mat.arredondar(deposito,2) +"\n"
 
         escreva("Sucesso! Seu saldo agora é: ", mat.arredondar(saldo, 2) ,"\n")
         escreva("Aperte ENTER para continuar ou 0 para sair: ")
         leia(loop)
         limpa()
 
         se(loop == "0")
         {input = 0}
         
        pare

        //Saque
        caso 2:
 
         escreva("Digite a sua senha: ")
         leia(pswd)
         limpa()
 
         enquanto(pswd != senha)
         {
           escreva("Senha errada, tente novamente: ")
           leia(pswd)
           limpa()
         }
 
         escreva("Digite o valor que deseja sacar: ")
         leia(saque)
         limpa()
 
         enquanto(saque < 0 ou saldo - saque < 0)
         {
           se(saque < 0)
          {
           escreva("Digite um valor valido: ")
           leia(saque)
           limpa()
          }

          senao
          {
            escreva("Você não pode realizar saques que excedam o saldo disponível, tente novamente: ")
            leia(saque)
            limpa()
          }
         }
 
         saldo = saldo - saque
         extrato = extrato + "--SAQUE--\n" + "R$"+ mat.arredondar(saque,2) +"\n"
 
         escreva("Sucesso! Você retirou R$",mat.arredondar(saque,2), " e agora tem R$", mat.arredondar(saldo, 2) ," de saldo na sua conta.\n")
         escreva("Aperte ENTER para continuar ou 0 para sair: ")
         leia(loop)
         limpa()
 
         se (loop == "0")
         {input = 0}
         pare
 
        //Extrato
        caso 3:
 
         escreva("Digite a sua senha: ")
         leia(pswd)
         limpa()
 
         enquanto(pswd != senha)
         {
           escreva("Senha errada, tente novamente: ")
           leia(pswd)
           limpa()
         }
 
         escreva(extrato)
         escreva("\nAperte ENTER para continuar ou 0 para sair: ")
         leia(loop)
         limpa()
 
         se(loop == "0")
         {input = 0}
 
        pare

        //Investimento
        caso 4:
 
         escreva("Digite a sua senha: ")
         leia(pswd)
         limpa()
 
         enquanto(pswd != senha)
         {
           escreva("Senha errada, tente novamente: ")
           leia(pswd)
           limpa()
         }
 
         escreva("Quantidade que desejas investir: ")
         leia(investir)
         limpa()
 
         enquanto(investir < 0 ou saldo - investir < 0)
         {
           se (investir < 0)
          {
           escreva("Digite um valor valido: ")
           leia(investir)
           limpa()
          }

           senao
           {
            escreva("Você não pode investir além do saldo disponível em sua conta, tente novamente: ")
            leia(investir)
            limpa()
           }
         }

         escreva("Meses que desejas investir: ")
         leia(mes)
         limpa()
 
         enquanto(mes < 0)
         {
           escreva("Digite um valor valido: ")
           leia(mes)
           limpa()
         }
 
         para(inteiro contadorMeses = 0; contadorMeses < mes; contadorMeses++)
         {
          investir = investir * 1.02
         }
          
          saldo = saldo + investir
          extrato = extrato + "--INVESTIMENTO--\n" + "R$" + mat.arredondar(investir,2) +"+\n"
 
          escreva("seu rendimento foi de: R$", mat.arredondar(investir, 2), " seu saldo toal agora é: R$", mat.arredondar(saldo, 2),"\n")
          escreva("Aperte ENTER para continuar ou 0 para sair: ")
          leia(loop)
          limpa()
 
          se(loop == "0")
          {input = 0}
 
        pare
      }
    }
  }
}
