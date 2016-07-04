tentativa = 10
colecao = []
for contador in 1..tentativa
  puts "Insira o chute a ser guardado no array"
  chute = gets.strip
  colecao << chute
  puts "O array tem " + colecao.size.to_s + " elementos"
  puts "Os elementos são " + colecao.to_s
end 
