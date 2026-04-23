programa {
  funcao inicio() {
    real nota1, nota2, calc

    escreva("Escreva a primiera nota: ") 
    leia(nota1)

    escreva("Escreva a segunda nota: ")
    leia(nota2)

    calc = (nota1 + nota2) / 2

    se(calc > 60){
      escreva("Parabens!! Vc tirou media!!, e sua nota final e de: ", calc)
    }
    senao {
      escreva("Vc tirou abaixo da media!!, e sua nota final e de: ", calc)
    }

     }
}
