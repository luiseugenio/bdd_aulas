class Jogo
  def initialize(primeira_mao, segunda_mao)
    @primeira_mao = primeira_mao
    @segunda_mao = segunda_mao
  end

  def vencedor
    trios_primeira_mao = quantidade_trios_da(@primeira_mao)
    trios_segunda_mao = quantidade_trios_da(@segunda_mao)
    if trios_primeira_mao == trios_segunda_mao
      "empate"
    elsif trios_primeira_mao > trios_segunda_mao
      "primeira mao"
    else
      "segunda mao"
    end
  end

private

  def quantidade_trios_da(mao)
    valores_mao = []
    mao.each do |carta|
      valores_mao << carta.valor
    end
    valores_unicos_mao = valores_mao.uniq
    quantidade = 0
    valores_unicos_mao.each do |valor|
      if valores_mao.count(valor) >= 3
        quantidade += 1
      end
    end
    quantidade
  end
end
