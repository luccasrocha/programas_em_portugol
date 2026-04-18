// inicia o programa
programa
{
    funcao inicio()
    {
        // começa o bloco
        cadeia nome = 0
        cadeia sobrenome = 0
        cadeia nomeCompleto = 0
        escreva("Digite o seu primeiro nome: ") // pergunta o primeiro nome
                leia(nome) // chama a função cadeia nome
        escreva("Digite o seu segundo nome: ") // pergunta o segundo nome
                leia(sobrenome) // chama a função cadeia sobrenome
        nomeCompleto = nome + " " + sobrenome // chama a função nomeCompleto e iguala a soma de nome + sobrenome
        escreva("Muita boa noite senhor(a): ", nomeCompleto) // mostra para o usuario o seu nome "completo"
    }
    // termina o bloco
    // termina o programa
}
