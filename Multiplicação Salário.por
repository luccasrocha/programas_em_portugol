programa
{
    funcao inicio()
    {
        real horas = 0
        real valorhr = 0
        real calculo = 0
        cadeia nome = 0
        escreva("Digite o nome do funcionario: ")
                leia(nome)
        escreva("Digite as horas trabalhadas: ")
                leia(horas)
        escreva("Qual o valor das hrs: ")
                leia(valorhr)
        calculo = horas * valorhr
        escreva("O seu salario do funcionario/a ", nome, " e de ", calculo, " $")
    }
}
