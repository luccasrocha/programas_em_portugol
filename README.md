Este repositório tem como objetivo reunir algoritmos e exemplos desenvolvidos em Portugol, além de fornecer uma explicação completa sobre a linguagem, sua origem, principais conceitos e funcionalidades.

## Origem e Criação

O Portugol é uma pseudolinguagem de programação criada com fins didáticos, voltada para o ensino de lógica de programação no Brasil e em países de língua portuguesa. Não possui um único criador oficial — foi desenvolvida e adaptada ao longo do tempo por educadores e instituições de ensino. Sua sintaxe é baseada no português, tornando o aprendizado mais acessível para iniciantes antes de migrarem para linguagens como C, Java ou Python.

## Por que Portugol

- Sintaxe em português (sem barreira do inglês)
- Foco total em lógica de programação
- Ideal para quem está começando do zero
- Base sólida para aprender qualquer linguagem futura

## Principais Pontos Importantes

- Pseudolinguagem interpretada (não gera executável real)
- Tipagem estática e explícita (o tipo deve ser declarado)
- Estrutura simples e próxima do português natural
- Suporta programação estruturada: funções, estruturas de controle e vetores
- Utilizada em ferramentas como Visualg e Portugol Studio

### Tipos de Dados Básicos

| Tipo      | Descrição                                            | Exemplo de Uso              |
| --------- | ---------------------------------------------------- | --------------------------- |
| `inteiro` | Número inteiro (positivos e negativos)               | `inteiro idade <- 25`       |
| `real`    | Número com casas decimais                            | `real altura <- 1.75`       |
| `caractere` | Texto (string)                                     | `caractere nome <- "Ana"`   |
| `logico`  | Valor lógico (verdadeiro ou falso)                   | `logico ativo <- verdadeiro`|

### Exemplo de Declaração de Variáveis

```portugol
inteiro idade <- 30
real peso <- 70.5
caractere genero <- "M"
real temperatura <- 36.6
logico aprovado <- verdadeiro
caractere nome <- "Luccas"
```

> Em Portugol, o operador de atribuição é `<-` (seta), não `=`.

# Operadores

## Operadores Aritméticos

| Operador | Nome            | Exemplo       |
| -------- | --------------- | ------------- |
| +        | Soma            | 5 + 3 = 8     |
| -        | Subtração       | 5 - 3 = 2     |
| *        | Multiplicação   | 5 * 3 = 15    |
| /        | Divisão         | 5 / 2 = 2.5   |
| %        | Resto (MOD)     | 5 % 2 = 1     |

## Atribuição

| Operador | Exemplo          | Descrição                        |
| -------- | ---------------- | -------------------------------- |
| `<-`     | `x <- 5`         | Atribui o valor 5 à variável x   |
| `<- x +` | `x <- x + 3`    | Incrementa x em 3                |
| `<- x -` | `x <- x - 2`    | Decrementa x em 2                |
| `<- x *` | `x <- x * 4`    | Multiplica x por 4               |
| `<- x /` | `x <- x / 2`    | Divide x por 2                   |

> Portugol **não possui** operadores compostos como `+=` ou `-=`. Use sempre a forma completa: `x <- x + 1`.

## Relacionais

| Operador | Descrição      |
| -------- | -------------- |
| =        | Igual          |
| <>       | Diferente      |
| >        | Maior          |
| <        | Menor          |
| >=       | Maior ou igual |
| <=       | Menor ou igual |

> Atenção: em Portugol, `=` é usado para **comparação**, não para atribuição (que é o `<-`).

## Lógicos

- **e (E lógico):** Retorna verdadeiro somente se **ambas** as condições forem verdadeiras.

- **ou (OU lógico):** Retorna verdadeiro se **pelo menos uma** das condições for verdadeira.

- **nao (negação):** Inverte o valor lógico de uma condição (verdadeiro vira falso e vice-versa).

# Conceitos

## ESCREVA

O `escreva()` é o comando usado para exibir informações na tela. Pode exibir textos, variáveis e combinações.

Exemplo de uso:

```portugol
inteiro idade <- 25
escreva("Minha idade é ", idade, " anos.")
escreval("Essa linha pula para a próxima automaticamente.")
```

> `escreva()` mantém o cursor na mesma linha. `escreval()` pula uma linha ao final.

## LEIA

O `leia()` é o comando usado para receber dados digitados pelo usuário e armazená-los em variáveis.

| Tipo de dado | Exemplo de leitura           | Descrição                     |
| ------------ | ---------------------------- | ----------------------------- |
| `inteiro`    | `leia(idade)`                | Lê um número inteiro          |
| `real`       | `leia(altura)`               | Lê um número com decimais     |
| `caractere`  | `leia(nome)`                 | Lê um texto                   |
| `logico`     | `leia(ativo)`                | Lê verdadeiro ou falso        |

## Exemplo de uso:

```portugol
programa
{
    funcao inicio()
    {
        caractere nome
        inteiro idade
        real altura

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        escreva("Digite sua altura: ")
        leia(altura)

        escreval("\n=== RESULTADO ===")
        escreva("Nome: ", nome, "\n")
        escreva("Idade: ", idade, " anos\n")
        escreva("Altura: ", altura, " m\n")
    }
}
```

- `leia()` já armazena o valor no tipo correto da variável declarada
- Não é necessário converter — declare o tipo certo na variável
- Use `escreval()` para quebrar linhas ao exibir resultados

## Estruturas de Controle

### SE / SENAO SE / SENAO

- Uso: Condições simples ou em cadeia

```portugol
inteiro nota <- 85

// SE simples (1 condição)
se (nota >= 60) {
    escreval("Aprovado!")
}

// SE-SENAO (2 opções)
se (nota >= 70) {
    escreval("Bom trabalho!")
} senao {
    escreval("Estude mais!")
}

// SENAO SE (múltiplas condições)
se (nota >= 90) {
    escreval("A")
} senao se (nota >= 80) {
    escreval("B")
} senao se (nota >= 70) {
    escreval("C")
} senao se (nota >= 60) {
    escreval("D")
} senao {
    escreval("Reprovado")
}
```

### ESCOLHA - CASO

- Uso: Escolha exata por valor, equivalente ao `switch` do C

```portugol
caractere op
escreva("(+ - * /): ")
leia(op)

escolha (op) {
    caso '+':
        escreval(a + b)
        pare
    caso '-':
        escreval(a - b)
        pare
    caso '*':
        escreval(a * b)
        pare
    caso '/':
        se (b <> 0) {
            escreval(a / b)
        } senao {
            escreval("Erro: divisão por zero!")
        }
        pare
    caso contrario:
        escreval("Opção inválida!")
}
```

- SEMPRE use `pare` ao final de cada caso, senão "cai" para o próximo!
- `caso contrario` é o equivalente ao `default` do C

### ENQUANTO

- Uso: Loop quando a condição é desconhecida antes de começar

```portugol
inteiro i <- 0
inteiro soma <- 0

escreval("Digite números (0 para parar):")
enquanto (verdadeiro) {   // Loop infinito
    leia(i)
    se (i = 0) {
        interrompa           // Sai do loop
    }
    soma <- soma + i
}
escreva("Soma: ", soma)
```

### FACA - ENQUANTO

- Uso: Executa PELO MENOS 1 VEZ (ideal para validações)

```portugol
inteiro idade

faca {
    escreva("Idade (0-120): ")
    leia(idade)

    se (idade < 0 ou idade > 120) {
        escreval("Idade inválida! Tente novamente.")
    }
} enquanto (idade < 0 ou idade > 120)

escreva("Idade válida: ", idade)
```

### PARA

- Uso: Contadores conhecidos (vetores, tabuadas)

```portugol
// Tabuada completa
para (inteiro i de 1 ate 10 passo 1) {
    escreva(i, ": ")
    para (inteiro j de 1 ate 10 passo 1) {
        escreva(i * j, "  ")
    }
    escreval("")
}
//  1:  1  2  3 ...  10
//  2:  2  4  6 ...  20
```

#### INTERROMPA e CONTINUE

```portugol
para (inteiro i de 0 ate 9 passo 1) {
    se (i % 2 = 0) {
        continue       // PULA pares
    }
    se (i = 7) {
        interrompa     // PARA em 7
    }
    escreva(i, " ")    // 1 3 5
}
```

## QUANDO USAR CADA ESTRUTURA?

| Estrutura        | Melhor para                      | NÃO use para        | Exemplo Perfeito              |
| ---------------- | -------------------------------- | ------------------- | ----------------------------- |
| se/senao se      | Ranges, condições complexas      | Menus simples       | Classificação de notas A/B/C  |
| escolha/caso     | Valor EXATO (1,2,3,'+','-')      | Ranges (> <)        | Calculadora (+ - * /)         |
| enquanto         | Condição **desconhecida antes**  | Contadores fixos    | Leitura até digitar 0         |
| faca-enquanto    | 1ª execução obrigatória          | Loops normais       | "Digite um valor válido"      |
| para             | Iterações fixas (1 a N)          | Condições complexas | Vetores, tabuada              |

## NUNCA FAÇA

```portugol
// 1. Usar = para atribuição (use <-)
inteiro x = 5          // ERRADO!
inteiro x <- 5         // CORRETO

// 2. Esquecer o pare no escolha
escolha (x) {
    caso 1: escreval("1")
    caso 2: escreval("2")  // SEMPRE executa junto!
}

// 3. Enquanto sem atualizar a variável
inteiro i <- 0
enquanto (i < 10) {
    escreval(i)
    // i <- i + 1 esquecido = LOOP INFINITO!
}

// 4. Comparar tipos diferentes
inteiro x <- 5
caractere y <- "5"
se (x = y) { ... }     // ERRO de tipo!
```

## SEMPRE FAÇA

```portugol
// Declare variáveis com tipo correto antes de usar
inteiro idade
real altura
caractere nome

// Use <- para atribuição, = para comparação
idade <- 25
se (idade = 25) {
    escreval("Tem 25 anos!")
}

// Sempre use pare no escolha
escolha (op) {
    caso 1: {
        escreval("Um")
        pare
    }
}

// Atualize o contador no enquanto
inteiro i <- 0
enquanto (i < 10) {
    escreval(i)
    i <- i + 1   // Atualização explícita!
}
```


A linguagem é compilada em três passos:

    Análise léxica e sintática.
    Análise sintática, de escopo e de indentação
    Análise semântica e geração de código.

Comandos

Os comandos válidos na linguagem Portugol são:

    se ... entao ... senao : condição típica para decisões
    inicio ... fim : marca um bloco de comandos subordinados
    imprima : imprime uma mensagem ou variável na saída padrão
    leia : lê um valor da entrada padrão
    enquanto : comando para laço condicional
    para : comando para laço com inicialização, condição e incremento
    aborte : termina abruptamente o programa
    retorne : retorna de uma função para a função chamadora
    saia : termina o programa com um código de sucesso/erro

Tipos de dados

    inteiro : valores inteiros com sinal (int)
    real : valores reais com sinal (float)
    texto : cadeia de caracteres (string, char *)
    nada : ponteiro para variável sem tipo (void *)
    ponteiro : ponteiro para inteiro, real ou texto.

Expressões e operadores (relacionais e lógicos)

    atribuição: c = 0;
    incremento: c++; ++c; (pós e préfixado)
    decremento: c--; --c; (pós e préfixado)
    apontador: *p = 0; (dereferenciador de ponteiros)
    endereço: p = & c; (endereço de uma variável)
    Aritméticas: - (unário), +, -, *, /, e % (módulo, ou resto da divisão)
    Relacionais: >=, <=, ==, !=, > e <
    Lógicas: e, ou e nao (sem acentos)

Opções mais avançadas

    tipo funcao(arg1, arg2, arg3) : pode-se declarar funções com até 3 argumentos (*)
    externa : define uma função externa
    define : define uma macro
    #debug : se ativado, o compilador imprimirá a árvore sintática durante a compilação
    _ARVORE: ativado, liga impressão da árvore sintática
    _TABELA: ativado, liga a impressão da tabela de símbolos

Nota: (*) limite de 3 argumentos nas funções imposto no momento, mas suficiente para o estudo dos algoritmos básicos.
Constantes e miscelâneas

    Números podem ser escritos em notação científica

    Comentários são feitos com o símbolo // e são apenas de linha

    Strings são entre "aspas" (duplas)

    Formato para imprimir e ler: %d, %f ou %s (inteiros, reais e strings) com uso de modificadores

    inc, dec, incpos, incpre decpos, decpre

    pont upont uend pattrib

    ponti pontr ponts

    indent intcon realcon textocon principal

Prioridade dos operadores

Os operadores são processados na seguinte ordem (do menos prioritário para o de maior prioridade):

    incremento pós-fixado
    ou
    e
    nao
    operadores relacionais
    atribuição
    adição e subtração
    multiplicação, divisão e módulo
    incremento pré-fixado
    dereferenciamento de ponteiros
    endereço de variáveis

