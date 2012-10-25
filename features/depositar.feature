# language: pt
Funcionalidade: Depositar Dinheiro

  Esquema do Cenario: Depositar Dinheiro

    Dado um cliente especial com saldo atual de <saldo_inicial> reais
    Quando ele realizar um deposito no valor <deposito> reais
    Entao o saldo da conta atualizado para <saldo_final> reais

    Cenarios: valores possiveis
    | saldo_inicial | deposito | saldo_final |
    | 200 | -100 | 100 |
    | 200 | +100 | 300 |
    | 200 | 100.11 | 300.11 |
    | 200 | 100 | 300 |
