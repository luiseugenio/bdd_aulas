class Banco
  def transferir(contaorigem, contadestino, valor)
    contaorigem.sacar(valor)
    contadestino.depositar(valor)
  end
end
