puts "Bem vindo ao jogo de adivinhar"
puts "Qual o seu nome?"
nome = gets 
puts "\n\n\n\n\n\n"  
puts "Começaremos o jogo " + nome

puts "escolha um  secreto entre 0 e 200...\n\n"
numero_secreto = 175
puts "Escolhido. Que tal adivinhar hoje o nosso numero secreto?"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas 
	put "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o numero"
	chute = gets 
	puts "Sera que acertou? Voce chutou " + chute
	puts "/n"
	acertou = numero_secreto == chute.to_i 

	if acertou
		puts "Acertou!"
		break
	else
		maior = numero_secreto > chute.to_i
		if maior 
			puts "o número secreto é maior"
		else
			puts "o número secreto é menor"
		end
	end
end

