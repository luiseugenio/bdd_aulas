Dado /^uma mao com as seguintes cartas$/ do |table|
  @primeira_mao = []
  table.hashes.each do |hash|
    @primeira_mao << Carta.new(hash)
  end
end

Dado /^outra mao com as seguintes cartas$/ do |table|
  @segunda_mao = []
  table.hashes.each do |hash|
    @segunda_mao << Carta.new(hash)
  end
end

Entao /^a primeira mao deve ganhar da segunda mao$/ do
  jogo = Jogo.new(@primeira_mao, @segunda_mao)
  expect(jogo.vencedor).to eql "primeira mao"

end
