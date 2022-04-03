Algoritmo "aula16-ex04"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/09/2021
Var
   // Seção de Declarações das variáveis
   valor: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreva("Digite o valor da compra: ")
   leia(valor)

   se (valor <= 1200) então
      escreva("Compra aprovada")

   senão
      escreva("Compra reprovada")

   fimse

Fimalgoritmo