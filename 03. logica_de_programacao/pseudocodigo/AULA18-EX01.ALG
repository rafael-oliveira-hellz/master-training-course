Algoritmo "AULA18-EX01"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
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

   se (pagto = "a vista") ent�o
      desc <- valor * 0.1375
      total <- valor - desc
      escreva("O valor da compra A VISTA com R$",desc, " de desconto �: ", total)
   sen�o
      se (pagto = "a prazo") ent�o
         desc <- valor * 0.085
         total <- valor - desc
         escreva("O valor da compra A PRAZO com R$",desc, " de desconto �: ", total)
      sen�o
         acresc <- valor * 0.189
         total <- valor + acresc
         escreva("O valor da compra NO CART�O com R$",acresc, " de acr�scimo �: ", total)
      fimse
   fimse
Fimalgoritmo