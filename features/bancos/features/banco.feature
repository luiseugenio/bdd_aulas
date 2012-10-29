# language: pt
Funcionalidade: Transferir Dinheiro

  Cenario: Transferir Dinheiro

    Quando eu seleciono conta corrente com o saldo 100 como conta de origem
    E eu seleciono poupanca com o saldo 50 como conta de destino
    E eu informo que a quantidade é 20
    E solicito executar
    Entao o saldo da conta origem é 80
    E saldo da conta destino é 70

  Cenario: Transferir Dinheiro Resumido

    Quando eu transfiro 20 da conta corrente com saldo 100 para a poupanca com saldo 50
