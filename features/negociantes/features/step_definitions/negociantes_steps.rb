Dados /^os negociantes:$/ do |table|
  @negociantes = []
  table.hashes.each do |hash|
    @negociantes << Negociante.new(hash)
  end
end

Quando /^os negociantes sao ordenados pelo nome$/ do
  empresa = Empresa.new(@negociantes)
  empresa.ordenar_negociantes_pelo_nome
end

Entao /^os comerciantes devem vir na seguinte ordem:$/ do |table|
  hash_negociantes = []
  @negociantes.each do |negociante|
    hash_negociantes << {"nome" => negociante.nome, "rank" => negociante.rank}
  end
  expect(hash_negociantes).to eql table.hashes
end
