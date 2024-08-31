programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() 
  {
    //Declara��o das Vari�veis
    real saldo = 0, deposito, saque, investir
    cadeia loop, senha = "viana", pswd = "", extrato = ""
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

      escreva("Selecione uma das op��es: ")
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
  
         enquanto(deposito < 0)
         {
           limpa()
           escreva("Digite um valor valido: ")
           leia(deposito)
         }
  
         saldo = saldo + deposito
         extrato = extrato + "--DEPOSITO--\n" + "R$" + mat.arredondar(deposito,2) +"\n"
  
         escreva("Sucesso! Seu saldo agora �: ", mat.arredondar(saldo, 2) ,"\n\n")
         escreva("Aperte ENTER para continuar: ")
         leia(loop)
         limpa()
         
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
  
         enquanto(saque < 0 ou saque > saldo)
         {
           se(saque < 0)
           {
             limpa()
             escreva("Digite um valor valido: ")
             leia(saque)
           }
           senao
           {
             limpa()
             escreva("Voc� n�o pode realizar saques que excedam o saldo dispon�vel, tente novamente: ")
             leia(saque)
           }
         }
  
         saldo = saldo - saque
         extrato = extrato + "--SAQUE--\n" + "R$"+ mat.arredondar(saque,2) +"\n"
  
         escreva("Sucesso! Voc� retirou R$",mat.arredondar(saque,2), " e agora tem R$", mat.arredondar(saldo, 2) ," de saldo na sua conta.\n\n")
         escreva("Aperte ENTER para continuar: ")
         leia(loop)
         limpa()
  
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
         escreva("\nAperte ENTER para continuar: ")
         leia(loop)
         limpa()
  
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
  
         enquanto(investir < 0 ou investir > saldo)
         {
            se (investir < 0)
           {
             limpa()
             escreva("Digite um valor valido: ")
             leia(investir)
           }
            senao
            {
             limpa()
             escreva("Voc� n�o pode investir al�m do saldo dispon�vel em sua conta, tente novamente: ")
             leia(investir)
            }
         }
         saldo = saldo - investir
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
         {investir = investir * 1.02}
          
         saldo = saldo + investir
         extrato = extrato + "--INVESTIMENTO--\n" + "R$" + mat.arredondar(investir,2) +"+\n"
  
         escreva("seu rendimento foi de: R$", mat.arredondar(investir, 2), " seu saldo toal agora �: R$", mat.arredondar(saldo, 2),"\n\n")
         escreva("Aperte ENTER para continuar: ")
         leia(loop)
         limpa()
  
        pare
      }
    }
  }
}