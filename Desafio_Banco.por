programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() 
  {
    //Declaração das Variáveis
    real resultado = 0, saque = 0, deposito = 0, saldo = 0, user = 0, investir
    cadeia senha = "Pevav", pswd = "", repetir, extrato = ""
    inteiro opcao, meses = 0

    //Repetição e Entrada de dados
    enquanto(user == 0)
    {
      escreva("|-----Menu-------|\n")
      escreva("| 1-Saldo -> R$", mat.arredondar(saldo, 3), "\n")
      escreva("| 2-Deposito     |\n")   
      escreva("| 3-Saque        |\n")
      escreva("| 4-Extrato      |\n")
      escreva("| 5-Investimento |\n")
      escreva("| 6-Sair         |\n")
      escreva("|----------------|\n")

      escreva("Escolha uma opção acima: ")
      leia(opcao)

      limpa()

      //Escolhas
      escolha(opcao)
      {
        //DEPOSITO
        caso 2:
        escreva("Digite sua senha: ")
        leia(pswd
        )
        enquanto(pswd != senha)
        {
          limpa()
          escreva("Senha invalida, tente novamente: ")
          leia(pswd)
        }
        limpa()
        pswd = ""

        escreva("Digite o valor a depositar: ")
        leia(deposito)

        enquanto(deposito <0)
        {
          escreva("Deposito invalido, tente novamente: ")
          leia(deposito)
        }

        saldo = deposito + saldo
        extrato = extrato + "DEPOSITO-------------" + deposito + "\n"
        escreva("Seu saldo agora é: ", saldo, "\n")

        escreva("\nAperte ENTER para continuar e 5 para sair: ")
        leia(repetir)

        se(repetir == 5)
        {user++}
        limpa()

        pare

        //SAQUE
        caso 3:
        escreva("Digite sua senha: ")
        leia(pswd)
        enquanto(pswd != senha)
        {
          limpa()
          escreva("Senha invalida, tente novamente: ")
          leia(pswd)
        }
        limpa()
        pswd = ""

        escreva("Digite o valor para realizar o saque: ")
        leia(saque)

        enquanto(saque < 0)
        {
        escreva("Saque invalido, tente novamente: ")
        leia(saque)
        }

        enquanto((saldo - saque) < 0)
        {
         escreva("Você não pode retirar mais do que tem, tente novamente: ")
         leia(saque)
        }

        enquanto(saque == 0)
        {
          escreva("Digitando 0 você ira voltar ao menu inicial")

           escreva("\nAperte ENTER para continuar e 5 para sair: ")
           leia(repetir)

           se(repetir == 5)
           {user++}
           limpa()
        }
        saldo = saldo - saque
        extrato = extrato + "SAQUE-------------" + saque + "\n"

        escreva("Sucesso!, você retirou ", saque, " e agora tem ", saldo," de saldo na sua conta")

        escreva("\nAperte ENTER para continuar e 5 para sair: ")
        leia(repetir)

        se(repetir == 5)
        {user++}
        limpa()
        pare

        //Extrato
        caso 4:
        escreva(extrato)

        escreva("\nAperte ENTER para continuar e 5 para sair: ")
        leia(repetir)

        se(repetir == 5)
        {user++}
        limpa()
        pare
        
        //Investimento
        caso 5:
        escreva("Digite sua senha: ")
        leia(pswd)
        enquanto(pswd != senha)
        {
          limpa()
          escreva("Senha invalida, tente novamente: ")
          leia(pswd)
        }
        limpa()
        pswd = ""

        //Funcionamento
        escreva("Qual quantidade você deseja investir? ")
        leia(investir)

        enquanto(investir > saldo ou investir < 0)
        {
          escreva("Valor invalido, digite novamente: ")
          leia(investir)
        }

        saldo = saldo - investir
        escreva("Quantos meses deseja investir? ")
        leia(meses)

         enquanto(meses < 0)
        {
          escreva("Valor invalido, digite novamente: ")
          leia(meses)
        }

        para(inteiro contadorMeses = 0; contadorMeses < meses; contadorMeses++)
        {
         investir = investir * 1.02
        }
         
         saldo = saldo + investir

         escreva("seu rendimento foi de: R$", mat.arredondar(investir, 3), " seu saldo toal agora é: R$", mat.arredondar(saldo, 3),"\n")

         escreva("\nAperte ENTER para continuar e 5 para sair: ")
         leia(repetir)

         se(repetir == 5)
         {user++}
         limpa()
        
        pare
      }
    }
  }
}