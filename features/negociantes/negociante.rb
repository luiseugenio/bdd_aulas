class Negociante
  def initialize(hash)
    @nome = hash[:nome]
    @rank = hash[:rank]
  end

  def nome
    @nome
  end

  def rank
    @rank
  end
end
