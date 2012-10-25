require './conta'

Dado /^um cliente especial com saldo atual de ([-+]?\d*\.?\d*) reais$/ do |arg1|
  saldo = arg1.to_f
  @conta = Conta.new(saldo)
end

Quando /^ele realizar um deposito no valor ([-+]?\d*\.?\d*) reais$/ do |arg1|
  valor = arg1.to_f
  @conta.depositar(valor)
end

Entao /^o saldo da conta atualizado para ([-+]?\d*\.?\d*) reais$/ do |arg1|
  valor = arg1.to_f
  expect(@conta.saldo).to eql valor
end
