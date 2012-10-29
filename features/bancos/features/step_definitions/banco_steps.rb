# encoding: utf-8
Quando /^eu seleciono conta corrente com o saldo (\d+) como conta de origem$/ do |arg1|
  valor = arg1.to_f
  @contaorigem = Conta.new(valor)
end

Quando /^eu seleciono poupanca com o saldo (\d+) como conta de destino$/ do |arg1|
  valor = arg1.to_f
  @contadestino = Conta.new(valor)
end

Quando /^eu informo que a quantidade é (\d+)$/ do |arg1|
  valor = arg1.to_f
  @quantidade = valor
end

Quando /^solicito executar$/ do
  @banco = Banco.new
  @banco.transferir(@contaorigem, @contadestino, @quantidade)
end

Entao /^o saldo da conta origem é (\d+)$/ do |arg1|
  valor = arg1.to_f
  expect(@contaorigem.saldo).to eql valor
end

Entao /^saldo da conta destino é (\d+)$/ do |arg1|
  valor = arg1.to_f
  expect(@contadestino.saldo).to eql valor
end

Quando /^eu transfiro (\d+) da conta corrente com saldo (\d+) para a poupanca com saldo (\d+)$/ do |valor, saldo_contaorigem, saldo_contadestino|
  step "eu seleciono conta corrente com o saldo #{saldo_contaorigem} como conta de origem"
  step "eu seleciono poupanca com o saldo #{saldo_contadestino} como conta de destino"
  step "eu informo que a quantidade é #{valor}"
  step "solicito executar"
end
