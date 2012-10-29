# language: pt
Funcionalidade: Ordenacao de Negociantes
  Cenario: exibe os negociantes ordenados pelo nome
    Dados os negociantes:
      | nome | rank |
      | Larry | Estagio 3 |
      | Moe | Estagio 1 |
      | Curly | Estagio 2 |
    Quando os negociantes sao ordenados pelo nome
    Entao os comerciantes devem vir na seguinte ordem:
      | nome | rank |
      | Curly | Estagio 2 |
      | Larry | Estagio 3 |
      | Moe | Estagio 1 |    
