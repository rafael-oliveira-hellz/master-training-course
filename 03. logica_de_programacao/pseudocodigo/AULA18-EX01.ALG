Algoritmo "AULA18-EX01"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/09/2021
Var
   pagto: caractere
   valor: real
   desc: real
   acresc: real
   total: real


Inicio
   escreva("Digite o valor da compra: ")
   leia(valor)
   escreva("Digite a forma de pagamento: ")
   leia(pagto)

   se (pagto = "a vista") então
      desc <- valor * 0.1375
      total <- valor - desc
      escreva("O valor da compra A VISTA com R$",desc, " de desconto é: ", total)
   senão
      se (pagto = "a prazo") então
         desc <- valor * 0.085
         total <- valor - desc
         escreva("O valor da compra A PRAZO com R$",desc, " de desconto é: ", total)
      senão
         acresc <- valor * 0.189
         total <- valor + acresc
         escreva("O valor da compra NO CARTÃO com R$",acresc, " de acréscimo é: ", total)
      fimse
   fimse
Fimalgoritmo