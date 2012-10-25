class Conta
  def initialize(saldo)
    @saldo = saldo
  end

  def depositar(valor)
    @saldo += valor
  end

  def saldo
    @saldo
  end
end
