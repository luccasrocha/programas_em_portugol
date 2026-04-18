/*
a variavel real = 2.989898 (numero quebrados)
*/
programa //inicia o codigo
{
    funcao inicio() //chama a função inicio basica
    {
        real num1, num2 //chama a variavel real para os meus numeros
        real soma, sub, mult, div //chama a variavel soma, subtração, multiplicação e divisão

        escreva("Digite o primeiro número: ") //pede ao usuario o num1
        leia(num1) //ler o num1

        escreva("Digite o segundo número: ") //pede ao usuario o num2
        leia(num2) //ler o num 2

        soma = num1 + num2 //chama a variavel (soma), faz a conta de soma
        sub  = num1 - num2 //chama a variavel (subtração), faz a conta de subtração
        mult = num1 * num2 //chama a variavel (multiplicação), faz a conta de multiplicação

        escreva("\nSoma: ", soma) //mostra ao usuario o valor da soma, e tmb chama a variavel real
        escreva("\nSubtração: ", sub) //mostra ao usuario o valor da subtração
        escreva("\nMultiplicação: ", mult) //mostra ao usuario o valor da multiplicação

        se (num2 != 0) //isso seria o (if)
        {
            div = num1 / num2 // chama a variavel (div) e faz a divisao
            escreva("\nDivisão: ", div)
        }
        senao //isso seria o (else)
        {
            escreva("\nDivisão não é possível (divisão por zero).")
        }
    }
}
