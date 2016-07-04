def da_boas_vindas
  puts "bem vindo ao jogo da forca"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "COmeçaremos o jogo, #{nome}"
  nome
end

def sorteia_palavra_secreta
  puts "Escolhendo uma palavra..."
  palavra_secreta = "programador"
  puts "Escolhida uma palavra com #{palavra_secreta.size} letras"
  palavra_secreta
end

def nao_quer_jogar?
  puts "De novo? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def joga(nome)
  palavra_secreta = sorteia_palavra_secreta

  erros = 5
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute chutes, erros
    chutes << chute

    #colocar regras de erros e acertos

  end

  puts "Você ganhou #{pontos_ate_agora} pontos"
end

nome = da_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end


