programa 
{
    funcao inicio()
    {
        real n1 = 0
        real n2 = 0
        real n3 = 0
        real n4 = 0
        real media = 0
        escreva("Me de sua primeira nota: ")
                leia(n1)
        escreva("Me de sua segunda nota: ")
                leia(n2)
        escreva("Me de sua terceira nota: ")
                leia(n3)
        escreva("Me de sua quarta nota: ")
                leia(n4)
        media = (n1 + n2 + n3 + n4) / 4
        escreva("\nSua media e de: ", media)
        se (media == 0) {
            escreva("\nCOMO VOCÊ CONSEGUIU TER UMA MEDIA DE 0?????? ")
        } senao {
            escreva("\nSUA MEDIA E 10? UM GENIO? ")
        }
    }
}
