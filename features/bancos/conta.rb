class Conta
  def initialize(saldo)
    @saldo = saldo
  end

  def saldo
    @saldo
  end

  def sacar(valor)
    @saldo -= valor
  end

  def depositar(valor)
    @saldo += valor
  end
end
