// Ler o valor de um produto Ler o percentual de desconto Calcular o preço final: valor - (valor * desconto / 100) Escrever o preço final com desconto SE o valor final for menor que R$ 100, escrever PRODUTO BARATO SENÃO, escrever PRODUTO CARO

programa
{
	funcao inicio()
	{
		real valor, desconto, preco_final

		escreva("Digite o valor do produto: R$ ")
		leia(valor)

		escreva("Digite o percentual de desconto (%): ")
		leia(desconto)

		preco_final = valor - (valor * desconto / 100)

		escreva("\nO preço final com desconto é: R$ ", preco_final)

		se (preco_final < 100)
		{
			escreva("\nPRODUTO BARATO")
		}
		senao
		{
			escreva("\nPRODUTO CARO")
		}
	}
}