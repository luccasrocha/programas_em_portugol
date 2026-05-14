programa {
  funcao inicio() {
    
    inteiro i, j

    para(i = 0; i <= 9; i++)
    {
        escreva("Tabuada do ", i, ":\n")

        para(j = 0; j <= 9; j++)
        {
            escreva(i, " x ", j, " = ", i * j, "\n")
        }

        escreva("\n")
    }

  }
}
