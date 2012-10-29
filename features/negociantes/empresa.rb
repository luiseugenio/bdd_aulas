class Empresa

  def initialize(negociantes)
    @negociantes = negociantes
  end

  def ordenar_negociantes_pelo_nome
    @negociantes.sort! { |a,b| a.nome.downcase <=> b.nome.downcase }
  end
end
