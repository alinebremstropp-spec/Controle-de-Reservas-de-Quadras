programa {
  funcao inicio() {
    cadeia nome = "", quadra = ""
    inteiro horario = 0, opcao = 0
    logico reservada = falso

    enquanto(opcao != 5){
    escreva("\n----CONTROLE DE RESERVA DE QUADRAS----")
    escreva("\n1- Reserva")
    escreva("\n2- Consultar reserva")
    escreva("\n3- Cancelar reserva ")
    escreva("\n4- Ver disponibilidade")
    escreva("\n5- Sair")
    escreva("Escolha uma opção: ")
    leia(opcao)

    escolha(opcao){
      caso 1:
      se(reservada == falso){
        escreva("\nNome do aluno: ")
        leia(nome)
        escreva("\nQuadra(futsal, vôlei ou basquerte): ")
        leia(quadra)
        escreva("\nHorário(8 até as 18): ")
        leia(horario)
        reservada = verdadeiro 
        escreva("\nReserva realizada com suceso!")
      } senao{
        escreva("\nA quadra já está reservada!")
        pare
      }  
      
      caso 2:
      se(reservada){
        escreva("\n----Dados da reserva----")
        escreva("\nAluno: ", nome)
        escreva("\nQuadra: ", quadra)
        escreva("\nHorário: ", horario, "h")
      } senao{
        escreva("\nNenhuma reserva cadastrada!")
        pare
      }  
      
      caso 3: 
      se(reservada){
        reservada = falso
        nome = ""
        quadra = ""
        horario = 0
        escreva("\nReserva cancelada com sucesso!")
      } senao{
        escreva("\nNão existe reserva para cancelar.")
        pare
      } 

      caso 4: 
      se(reservada){
      escreva("\nQuadra reservada")
      } senao{
        escreva("\nQuadra disponível!")
        pare
      }  

      caso 5: 
      escreva("\nObrigado por utilizar o sistema!")
      pare
      caso contrario:
      escreva("\nOpção inválida!") 
      pare
    }
    }
  }
}
